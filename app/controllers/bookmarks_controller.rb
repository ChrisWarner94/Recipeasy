class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(strong_params)
    @bookmark.recipe = Recipe.find(params[:recipe_id])
    @bookmark.user = current_user

    if @bookmark.save
      redirect_to recipes_path
    else
      render 'recipes/show', status: :unprocessable_entity
    end
  end

  def calendar
    @bookmarks = Bookmark.all
  end

  private

  def strong_params
    params.require(:bookmark).permit(:date, :notes)
  end
end
