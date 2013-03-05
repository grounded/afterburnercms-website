class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to thank_you_path
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
