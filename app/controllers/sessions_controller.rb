class SessionsController < ApplicationController

  def login
    if session[:logged_in] == false
      @session = "pending"
      render :login
    else
      render :logout
  end
  
  def post
      @user = User.authenticate(params[:email], params[:password])
      if @user != nil
        session[:logged_in] = true
        redirect_to "/users/#{@user.id}"
      else
        redirect_to "/users/new"
      end
  
  end
end


class SessionsController < ApplicationController

  def login
    @session = "pending"
  end

  def post
    binding.pry
    @user = User.authenticate(params[:email], params[:password])
    if @user != nil
      session[:logged_in] = true
      redirect_to "/users/#{@user.id}"
    else
      redirect_to "/users/new"
    end

  end

end

