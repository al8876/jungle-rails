class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    # @review = Review.new(review_params)
    # @review.user_id = current_user.id
    # @review.product_id = @product.id
    @review = @product.reviews.create(review_params)
    @review.user_id = current_user.id
    
    if @review.save
      redirect_to @product
    else
      redirect_to "/login", notice: "Error: Review did not submit"
    end

  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to @product, notice: "Errors"
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   if session[:user_id]
  #     @review.destroy
  #     redirect_to :back
  #   end
  # end
  # <%= link_to "Delete", product_review_path(:product_id => @product.id, :id => @review.id) , method: :delete, data: {confirm: "Are you sure you want to remove your review?"} %>

  # <%= link_to (fa_icon("trash"), [@product, @review], class: "btn btn-sm btn-danger", method: :delete, data: { confirm: "Are you sure you want to delete this?" } %>
  

  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end

end
