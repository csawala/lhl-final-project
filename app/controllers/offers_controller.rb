class OffersController < ApplicationController
  def index
    @offers = GoodsTypesOrganization.where(offers: true)
  end
end
