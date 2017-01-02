class NeedsController < ApplicationController

  def create
    @need = GoodsTypesOrganization.new(need_params)
  end

  def index
    @needs = GoodsTypesOrganization.where(needs: true, active: true)
                                   .filter_by_params(params)
    @goods_types = GoodsType.select(:name).all.order(name: :asc)
  end

  private

  def need_params
    params.require(:organization).permit(
    :offers,
    :needs,
    :urgent,
    :description,
    :active,
    :organization_id,
    :goods_type_id
    )
  end
end
