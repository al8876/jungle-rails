class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    @reviews = Review.all.order(created_at: :desc)
  end

  def show
    # @product = Product.find(params[:id])
    # @review = Review.create
    @product = Product.find params[:id]
    @reviews = Review.find_by_product_id params[:id]
    @review = Review.new(reviews_params)
  end

  private

  def reviews_params
    params.permit(
      :description,
      :rating,
      :product_id,
      :user_id
    )
  end

  #did not implement
  #<dd><%= user_review.user.name %></dd>

end
