class SessionsController < ApplicationController
  def new
  end

  def  create
    if request.env['omniauth.auth']
      byebug
      user = User.create_with_omniauth(request.env['omniauth.auth'])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end