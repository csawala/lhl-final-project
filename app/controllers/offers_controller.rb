class OffersController < ApplicationController
  def index
    @offers = GoodsTypesOrganization.where(offers: true, active: true)
  end
end
