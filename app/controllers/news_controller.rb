class NewsController < ApplicationController
  def index
  end

  def show
    @news = News.find(params[:id])
  end
end
