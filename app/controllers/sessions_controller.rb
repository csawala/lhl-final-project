class SessionsController < ApplicationController
  def new
  end

  def  create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id

      if @user_org = Organization.where(user_id: session[:user_id]).ids.first
        session[:user_org] = @user_org
        redirect_to dashboard_path(@user_org)
      else
        redirect_to root_path
      end

    else
      redirect_to login_path, notice: 'Invalid login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
