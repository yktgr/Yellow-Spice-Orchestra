class RecipesController < ApplicationController
  before_action:set_recipe,only:[:edit,:update,:show,:destroy]
  before_action :authenticate_user!, only: [:index, :new, :create]
  def index
    @q = Recipe.ransack(params[:q])
    @result =  @q.result(distinct: true).order(created_at: :desc)
    if @result.count == 0
      @recipes =  Recipe.order(created_at: :desc)
      flash.now[:alert] = '該当のレシピがありません'
    else
      @recipes =  @result
    end
      @recipes　= Recipe.order(created_at: :desc)
  end

  def new
    @recipe = Recipe.new
    3.times{ @recipe.materials.build}
    3.times{ @recipe.flows.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path, notice:'レシピを投稿しました'
    else
      render 'new', notice:'レシピを投稿できませんでした'
    end
  end

  def destroy
    if  @recipe.destroy
      redirect_to recipes_path, notice:'削除しました'
    else
      redirect_to recipes_path, notice:'削除できません'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path, flash: {notice:'レシピを編集しました'}
    else
      render 'edit'
    end
  end

  def show
    @favorite = current_user.recipe_likes.find_by(recipe_id: @recipe.id)
    @comment = @recipe.comments.build
    @comments = @recipe.comments
  end

  private
  def recipe_params
    params.require(:recipe).permit(:id,:name,:picture,:content,:curry_type,:user_id,:shop_id, :remove_picture,
        materials_attributes: [:id,:name,:amount,:recipe_id,:_destroy],
        flows_attributes: [:id,:content,:picture,:recipe_id,:_destroy, :remove_picture]
      )
  end
end
