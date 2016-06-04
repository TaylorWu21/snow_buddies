class UsersController < ApplicationController
  def index
 
  end

  def show
    @user = User.find(params[:id])
   
  end

  def edit
  end

  def update
  	
  end

  def new
  end

  def create
  	@user = User.create(user_params)
  end

  def destroy
  	
  end

  private

  	def user_params
  	params.require(:user).permit(:image)
  end

end
