class CommentsController < ApplicationController
def create
  @recipe = Recipe.find(params[:recipe_id])
  @comment = @recipe.comments.build(comment_params)
  @comment.user_id = current_user.id

  respond_to do |format|
    if @comment.save
      format.html { redirect_to recipe_path(@recipe) }
    else
      format.html { redirect_to recipe_path(@recipe), notice: '投稿失敗' }
    end
  end
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to recipe_path(@comment.recipe_id)
end

  private
  def comment_params
    params.require(:comment).permit(:recipe_id, :user_id, :content)
  end
end
