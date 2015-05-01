# encoding: utf-8
class Admin::ProjectsController < Admin::AdminController
  def index
    @projects = Project.order('id desc')
  end

  def new
    #
  end

  def create
    @project = Project.new project_params
    @project.project_thumbnail = ProjectThumbnail.new(project_thumbnail_params)
    if @project.save
      redirect_to admin_projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if params[:project_thumbnail].present?
      @project.project_thumbnail = ProjectThumbnail.new(project_thumbnail_params)
    end
    if @project.update_attributes(project_params)
      redirect_to admin_projects_path
    else
      redirect_to edit_admin_project_path(@project.id)
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      render :json =>{msg: 'ok'}
    else
      render :json =>{msg: 'error'}
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :brand_name, :company_name, :project_category_id, :service_content, :desc, :is_public)
  end

  def project_thumbnail_params
    params.require(:project_thumbnail).permit(:image)
  end

end
