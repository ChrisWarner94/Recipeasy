class RecipesController < ApplicationController
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
end
