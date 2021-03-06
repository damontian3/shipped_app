class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    current_user
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.create(user_params)
    session[:user_id] = @user.id
  	redirect_to @user
  end

	private
	def user_params
		params.require(:user).permit(:name, :username, :password)
	end	 


end


