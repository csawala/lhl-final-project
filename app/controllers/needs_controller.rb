class NeedsController < ApplicationController
  def index
    @needs = GoodsTypesOrganization.where(needs: true, active: true)
  end
end
