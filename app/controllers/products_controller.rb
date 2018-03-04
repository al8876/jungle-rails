class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.create
  end

  #did not implement
  #<dd><%= user_review.user.name %></dd>

end
