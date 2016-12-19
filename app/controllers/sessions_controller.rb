class SessionsController < ApplicationController
  def new
  end

  def  create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path(params[:email])
    else
      redirect_to login_path, notice: 'Invalid login'
    end
  end
end
