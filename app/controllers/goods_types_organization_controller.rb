class GoodsTypesOrganizationController < ApplicationController

  def get
    @edit_card = GoodsTypesOrganization.find(params[:id])

    redirect_to dashboard_path(@edit_card)
  end

  def update
    # byebug
  end
end
