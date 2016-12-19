class DashboardController < ApplicationController

  def show
    # validate_organization(current_user.organization.id)
    if current_user.organization.present?
      render 'org_edit'
    else
      render 'user_edit'
    end
  end

  def validate_organization(id)
    if Organization.where(id: id).count == 0
      redirect_to organizations_path
    else
      @org = Organization.find(id)
    end
  end
end
