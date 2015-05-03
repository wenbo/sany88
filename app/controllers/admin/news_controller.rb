# encoding: utf-8
class Admin::NewsController < Admin::AdminController
  def index
    @news = News.order('id desc')
  end

  def new
    #
  end

  def create
    @news = News.new news_params
    if @news.save
      redirect_to admin_news_index_path
    else
      render 'new'
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(news_params)
      redirect_to admin_news_index_path
    else
      redirect_to edit_admin_news_path(@news.id)
    end
  end

  def destroy
    @news = News.find(params[:id])
    if @news.destroy
      render :json =>{msg: 'ok'}
    else
      render :json =>{msg: 'error'}
    end
  end

  private
  def news_params
    params.require(:news).permit(:name, :content, :public_time, :is_public)
  end

end
