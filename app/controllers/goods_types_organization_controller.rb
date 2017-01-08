class GoodsTypesOrganizationController < ApplicationController

  def get
    @edit_card = GoodsTypesOrganization.find(params[:id])

    redirect_to dashboard_path(@edit_card)
  end

  def new
    @card = GoodsTypesOrganization.create_with_params(params)

    if !@card.save
      return redirect_to dashboard_path,
               notice: 'Make sure to enter a description and type for each need or offer'
    end

    redirect_to dashboard_path
  end

  def update
    # byebug
  end
end
