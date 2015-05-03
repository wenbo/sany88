class ProjectsController < ApplicationController
  def index
  end

  def show
    @project = Project.find(params[:id])
    @title = @project.name
  end
end
