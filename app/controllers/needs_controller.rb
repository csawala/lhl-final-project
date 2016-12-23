class NeedsController < ApplicationController
  def index
    @needs = GoodsTypesOrganization.where(needs: true, active: true)
                                   .filter_by_params(params)
    @goods_types = GoodsType.select(:name).all.order(name: :asc)
  end
end
