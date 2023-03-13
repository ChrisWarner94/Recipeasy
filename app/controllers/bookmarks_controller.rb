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
    # @bookmarks = Bookmark.all
    # Scoping the query to the dates being shown
    start_date = params.fetch(:start_date, Date.today).to_date
    # # Weekly view
    @bookmarks = Bookmark.where(date: start_date.beginning_of_week..start_date.end_of_week)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to calendar
  end

  private

  def strong_params
    params.require(:bookmark).permit(:date, :notes, :meal_time)
  end
end
