class DashboardController < ApplicationController

  def show
    @org = validate_organization(params[:id])
  end

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end
