class ProjectCategoriesController < ApplicationController
  def index
  end

  def show
    @project_category = ProjectCategory.find(params[:id])
    @title = @project_category.name
  end
end
