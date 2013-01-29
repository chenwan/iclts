class ShownewsController < ApplicationController
  def index
    @all_news = News.all
  end

  def onenews
	@one = News.find(params[:id])
  end
end
