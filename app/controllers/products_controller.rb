class ProductsController < ApplicationController

  def index
    @products = Product.all
    @cart = cart
  end

  def create
    cart << params[:product]
    redirect_to root_path
  end

end
