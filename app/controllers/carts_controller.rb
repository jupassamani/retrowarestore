# Carts Constroller
class CartsController < ApplicationController
  before_action :authenticate_user!
  def show
    cart_ids = $redis.smembers current_user_cart
    @cart_games = Game.find(cart_ids)
    @categories = Category.all
  end

  def add
    $redis.sadd current_user_cart, params[:game_id]
    redirect_to cart_path
  end

  def remove
    $redis.srem current_user_cart, params[:game_id]
    redirect_to cart_path
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end
