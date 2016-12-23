class NeedsController < ApplicationController
  def index
    @needs = GoodsTypesOrganization.where(needs: true)
  end
end
