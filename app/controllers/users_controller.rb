class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.valid?
			@user.save
			session[:user_id] = @user.id
    	redirect_to '/games'
		else
			render :new
		end
	end

private
	def logged_in?
		session[:user_id]
	end

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end
