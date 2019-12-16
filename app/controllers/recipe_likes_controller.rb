class RecipeLikesController < ApplicationController
  def create
    favorite = current_user.recipe_likes.create(recipe_id: params[:recipe_id])
    redirect_to user_path(current_user.id), notice: "お気に入りレシピに登録しました"
  end

  def destroy
    favorite = current_user.recipe_likes.find_by(id: params[:id]).destroy
    redirect_to user_path(current_user.id), notice: "お気に入りレシピを解除しました"
  end
end
