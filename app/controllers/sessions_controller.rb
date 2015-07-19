class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      #Create a error message
      flash.now[:danger] = 'Inavlid email and password combination'
      render 'new'
    end
  end

  def destroy
  end
end
