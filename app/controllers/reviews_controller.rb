class ReviewsController < ApplicationController

  def create
    @product = Product.find params[:product_id]
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.product_id = @product.id
    
    if @review.save
      redirect_to "/products/#{@review.product_id}"
    else
      redirect_to "/login"
    end

  end

  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end

end
