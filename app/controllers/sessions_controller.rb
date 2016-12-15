class SessionsController < ApplicationController
  def new
  end

  def  create
    type = params[:orgtype]
    user = User.authenticate(params[:email], params[:password])
    session[:user_id] = user.id
    # if user.business?
    #   redirect_to 'registration/business'
    # elsif user.charity?
    #   redirect_to 'registration/'

  end
end
