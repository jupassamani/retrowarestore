# Carts Constroller
class CartsController < ApplicationController
  before_action :authenticate_user!
  def show
    cart_ids = Redis.current.smembers current_user_cart
    @cart_games = Game.find(cart_ids)
    @categories = Category.all
  end

  def add
    Redis.current.sadd current_user_cart, params[:game_id]
    redirect_to cart_path
  end

  def remove
    Redis.current.srem current_user_cart, params[:game_id]
    redirect_to cart_path
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end
