class OffersController < ApplicationController

  def index
    @offers = GoodsTypesOrganization.where(offers: true, active: true)
                                    .filter_by_params(params)

    @goods_types = GoodsType.select(:name).all.order(name: :asc)

    if current_user && current_user.organization
      @org = current_user.organization.id
    end
  end

  def update
    # update card stuff here
  end

  def new
    @offer = GoodsTypesOrganization.create_with_params(params)
    @offer.offers = true

    if !@offer.save
      return redirect_to dashboard_path,
               notice: 'Make sure to enter a description and type for each need or offer'
    end

    redirect_to dashboard_path
  end

end
