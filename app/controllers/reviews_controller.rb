class ReviewsController < ApplicationController
  before_action :set_recipe, only: %i[new create]

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.recipe = @recipe
    if @review.save
      redirect_to recipe_path(@recipe)
    else
      render :new, status: :unprocessable_entity
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
    params.require(:review).permit(:content)
  end

end
