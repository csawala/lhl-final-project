class OffersController < ApplicationController
  def index
    @offers = GoodsTypesOrganization.where(offers: true, active: true)
                                    .filter_by_params(params)

    @goods_types = GoodsType.select(:name).all.order(name: :asc)

    if current_user && current_user.organization
      @org = current_user.organization.id
    end
  end
end
