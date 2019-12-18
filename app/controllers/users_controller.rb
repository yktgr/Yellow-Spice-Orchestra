class UsersController < ApplicationController
  before_action:set_user,only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def show
    @recipes = @user.recipes.all
    @recipe_likes =  current_user.recipe_likes
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

  def destroy
    if current_user.id == @user.id
      @user.destroy
      redirect_to recipes_path,notice:'削除しました'
    else
      redirect_to recipes_path,notice:'権限がありません'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:picture,:remove_picture)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
