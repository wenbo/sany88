class HomeController < ApplicationController
  def index
  end

  def wx
    render plain: params[:echostr]
  end

  def new
    @contact= Contact.new
  end

  def contact
    @contact= Contact.new(contact_params)
    if @contact.save
      render :contact
    else
      render :new
    end
  end

  def cooperate
  end

  def design_concept
  end

  def partner
  end

  def team
  end

  def search
    keyword = params["keyword"]
    @projects = Project.where(["name like ? or brand_name like ?" , "%#{keyword}%", "%#{keyword}%",])
  end

  private
  def contact_params
    params.permit(:name , :phone, :email, :subject, :content)
  end
end
