class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def create
  end

  def index
    @recipes = Recipe.all
    #implement PG search
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def update
  end
  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
