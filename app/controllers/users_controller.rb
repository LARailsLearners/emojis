class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(whitelisted_params)
		if @user.save
			if sign_in(@user)
				flash[:success] = "You successfully signed in"
				redirect_to @user
			else
				flash[:error] = "The sign up was not working"
				redirect_to @user
			end
		else
			flash[:error] = "The sign up was not successful"
			render :new
		end
	end

	private
		def whitelisted_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		end
end
