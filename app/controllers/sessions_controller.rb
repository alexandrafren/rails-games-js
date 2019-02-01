class SessionsController < ApplicationController
  #loads login page
  def new
    if session[:user_id]
      redirect_to '/games'
    end
  end

  #logs user in
  def create

	if auth_hash = request.env["omniauth.auth"]
		user = User.find_or_create_by_omniauth(auth_hash)
		session[:user_id] = user.id
		redirect_to '/games'
	else
   		 @user = User.find_by(name: params[:user][:name])
		if @user
    			return head(:forbidden) unless @user.authenticate(params[:user][:password])
    			session[:user_id] = @user.id
    			redirect_to '/games'
		else
			redirect_to '/login'
		end
	end
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

private
  def auth
    request.env['omniauth.auth']
  end
end
