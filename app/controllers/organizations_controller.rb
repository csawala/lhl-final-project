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

    if @cards = @org.goods_types_organizations
                    .where(active: true)
                    .order(created_at: :asc)
      @cards
    else return
    end

    @google_url = "https://www.google.com/maps/embed/v1/place?key=#{ ENV['GOOGLE_API_KEY'] }&q=#{ @org.google_address }"
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
