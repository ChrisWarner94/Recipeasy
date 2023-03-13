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
    @reviews = Review.all
    # return unless params[:query].present?

    if params[:query].present?
      # @recipes = Recipe.where("name ILIKE ?", "%#{params[:query]}%")
      @recipes = Recipe.search_by_name(params[:query])
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @reviews = @recipe.reviews
    @review = Review.new
    @bookmark = Bookmark.new
  end

  def new
  end

  def edit
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_imported_recipes_path
  end

  def update
  end

  def new1
    @recipe = Recipe.new
  end

  def new2
    @recipe = Recipe.new
  end

  def imported_recipes
    if params[:query].present?
      # @recipes = Recipe.where("name ILIKE ?", "%#{params[:query]}%")
      @recipes = current_user.recipes.search_by_name(params[:query])
    else
      @recipes = current_user.recipes
    end
    @recipes = @recipes.select { |recipe| recipe.video_url }
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :video_url, :description, :public, :instruction, :prep_time, :diet_tag,
                                   :servings, :ingredients, :notes, :date)
  end


  def recipe_params2
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])

  end
end
