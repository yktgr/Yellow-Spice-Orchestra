class UsersController < ApplicationController
  before_action:set_user,only:[:show, :edit, :update]

  def show
    @recipes = @user.recipes.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id),notice:"編集しました"
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:picture)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
