class SessionsController < ApplicationController
	def new
		
  	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to profile_path
		else
			flash[:error] = "Failed To Authenticate. Please try again."
			redirect_to login_path
		end
  	end

 	def destroy
    	session[:user_id] = nil
    	redirect_to '/'
  	end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
