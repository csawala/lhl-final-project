class OffersController < ApplicationController
  def index
    @offers = GoodsTypesOrganization.where(offers: true, active: true)
                                    .filter_by_params(params)

    @goods_types = GoodsType.select(:name).all.order(name: :asc)
  end
end
