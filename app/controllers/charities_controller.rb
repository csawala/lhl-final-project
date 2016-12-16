class CharitiesController < ApplicationController

  def index
    @charities = Organization.where(orgtype: 'charity')
  end

  def show
    @charity = Organization.where(id: params[:charity_id])
  end
end
