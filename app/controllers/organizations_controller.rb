class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all.order(name: :asc)
  end

  def show
    @org = Organization.find(params[:id])
  end
end
