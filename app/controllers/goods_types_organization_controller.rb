class GoodsTypesOrganizationController < ApplicationController

  def get
    @card = GoodsTypesOrganization.find(params[:id])
    redirect_to dashboard_path(@card)
  end

  def update
    # byebug
  end
end
