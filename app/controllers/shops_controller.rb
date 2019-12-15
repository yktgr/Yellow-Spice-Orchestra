class ShopsController < ApplicationController
  before_action:set_shop,only:[:edit,:update,:show,:destroy]
  before_action :authenticate_user!
  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true)
  end

  def new
    @shop = Shop.new
  end

  def create
    shop = Shop.new(shop_params)
    if  shop.save
      redirect_to shops_path ,notice:'ショップを登録しました'
    else
      render 'new',notice:'登録に失敗しました'
    end
  end

  def destroy
    if current_user.id == @shop.user_id
    @recipe.destroy
    redirect_to recipes_path,notice:'削除しました'
  else
    redirect_to recipes_path,notice:'権限がありません'
  end
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to recipes_path,notice:"編集しました"
    else
      render 'edit'
    end
  end
end

def shop_params
  params.require(:shop).permit(:id,:name,:address,:recipe_id,:user_id)
end
