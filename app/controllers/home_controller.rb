class HomeController < ApplicationController
  def index
  end

  def contact
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
end
