class UsersController < ApplicationController
  def new
  	@user = User.new
  	render :new
  end

  def create
  	user = User.create(user_params)
  	session[:user_id] = user.id
  	redirect_to root_path
  end

  def show
  	@user = User.find(session[:user_id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
