class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.filter_by_params(params).order(name: :asc)

    @causes = Category.select(:name).all.order(name: :asc)

    if current_user && current_user.organization
      @user_org = current_user.organization.id
    end
  end

  def create
    @org = Organization.new(org_params)

    if @org.save
      redirect_to "/dashboard", notice: 'Organization Created!'
    else
      # May require better else here
      render :root, notice: 'Something got mugged up!'
    end
  end

  def update
    org = Organization.find(params[:id])
    org.update(org_params)

    redirect_to "/dashboard"
  end

  def show
    @org    = Organization.find(params[:id])

    if @needs = @org.goods_types_organizations
                    .where(needs: true, active: true)
      @needs
    else return
    end

    if @offers = @org.goods_types_organizations
                     .where(offers: true, active: true)
      @offers
    else return
    end
  end

  private

  def org_params
    params.require(:organization).permit(
    :name,
    :address,
    :suite,
    :city,
    :postal,
    :province,
    :country,
    :email,
    :primaryphone,
    :secondaryphone,
    :url,
    :description,
    :image
    )
  end

end
