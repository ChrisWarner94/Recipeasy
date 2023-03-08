class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_path(@recipe)
    elsif @recipe.video_url
      render :new1, status: :unprocessable_entity
    else
      render :new2, status: :unprocessable_entity
    end
  end

  def index
    @recipes = Recipe.all

    return unless params[:query].present?

    @recipes = @recipes.where("title ILIKE?", "%#{params[:query]}%")
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def new1
    @recipe = Recipe.new
  end

  def new2
    @recipe = Recipe.new
  end

  # def imported_recipes
  #   if @recipe.public? == false
  #    @recipe
  #   end
  # end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :video_url, :description, :public, :instruction, :prep_time, :diet_tag,
                                   :servings, :ingredients)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
