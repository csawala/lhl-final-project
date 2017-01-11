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
    if !current_user || !current_user.organization
      redirect_to login_path
    else
      @org = current_user.organization
      @card = @org.goods_types_organizations.find(params[:card_id])

      @card.update(
        description: params[:description],
        goods_type_id: params[:goods_type].to_i,
        active: params[:setactive] ? !@card.active : @card.active,
        urgent: params[:seturgent] ? !@card.urgent : @card.urgent
        )

      redirect_to dashboard_path
    end
  end
end
