class OrganizationsController < ApplicationController
  # do we need an authorize here?

  def index
    @organizations = Organization.filter_by_params(params).order(name: :asc)
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
    @org = Organization.find(params[:id])
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
