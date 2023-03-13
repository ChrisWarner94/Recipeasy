class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @bookmarks = current_user.bookmarks
  end

  def about_us
  end

end
