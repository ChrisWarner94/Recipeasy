class BookmarksController < ApplicationController
  def index

    for

    # Scoping the query to the dates being shown
    start_date = params.fetch(:date, Date.today).to_date
    # Weekly view
    @bookmarks = Bookmark.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end

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
    params.require(:bookmark).permit(:date, :notes, :meal_time)
  end
end
