class DashboardController < ApplicationController

  def show
    # validate_organization(current_user.organization.id)
    if current_user.organization.present?
      @org = current_user.organization
      render 'org_edit'
    else
      redirect_to root_path
      # FIXME swap for this when render exists!!
      # render 'user_edit'
    end
  end

  def update
    @org = validate_organization(params[:id])
  end

  protected

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end
