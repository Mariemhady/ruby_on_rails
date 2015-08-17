class UsersController < ApplicationController
  def index
  	@users = Users.all
  end

  def show
  	@user = Users.find(params[:id])
  end

  def add
	@user = Users.create(user_params)
	@user.save

	redirect_to @user
  end
	 
  
 

  def list
  end

  private
	def user_params
		params.fetch(:user, {}).permit(:name, :password)
    end

end
