class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      #we get the authenticate method when we use 'has_secure_password'
      session[:user_id] = user.id
      flash[:success] = "Thanks for logging in!"    
      redirect_to todo_lists_path
    else
      flash[:error] = "There was a problem logging in. Please check out yor email and possword." 
      render action: 'new'
    end
  end
end
