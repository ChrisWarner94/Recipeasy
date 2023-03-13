class ReviewsController < ApplicationController
  before_action :set_recipe, only: %i[new create]

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @review.recipe = @recipe
    @bookmark = Bookmark.new

    if @review.save
      if @recipe.rating
        avg_rating = @recipe.rating
      else
        avg_rating = 0
      end
      total_rating = avg_rating * (@recipe.reviews.count - 1)
      avg_rating = (total_rating + @review.rating) / (@recipe.reviews.count)

      @recipe.rating = avg_rating
      @recipe.save

      redirect_to recipe_path(@recipe)
    else
      flash[:alert] = "Something went wrong."
      render "recipes/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@review.recipe), status: :see_other
  end


  private

  def set_recipe
    @review = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
