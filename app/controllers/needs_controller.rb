class NeedsController < ApplicationController

  def new
    @need = GoodsTypesOrganization.create_with_params(params)
    @need.needs = true

    if !@need.save
      return redirect_to dashboard_path,
               notice: 'Make sure to enter a description and type for each need or offer'
    end

    redirect_to dashboard_path
  end

  def index
    @needs = GoodsTypesOrganization.where(needs: true, active: true)
                                   .filter_by_params(params)

    @goods_types = GoodsType.select(:name).all.order(name: :asc)

    if current_user && current_user.organization
      @org = current_user.organization.id
    end
  end
end