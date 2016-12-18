class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.filter_by_params(params).order(name: :asc)
  end

  def show
    @org = Organization.find(params[:id])
  end
end
