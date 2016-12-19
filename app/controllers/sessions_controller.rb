class SessionsController < ApplicationController
  def new
  end

  def  create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      # move this if block to dashboard controller once we make a non-organization dashboard
      # if user.organization.present?
        redirect_to dashboard_path
      # else
      #   redirect_to root_path
      # end

    else
      redirect_to login_path, notice: 'Invalid login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
