class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by_product_id(params[:id])
    @product = @cart_item.product
    @cart_item.destroy
    flash[:warning] = "已将 #{@product.title} 从购物车清除"
    redirect_to carts_path
  end

end
