# encoding: utf-8
class Admin::ProjectCategoriesController < Admin::AdminController
  def index
    @project_categories = ProjectCategory.order('id desc')
  end

  def new
    #
  end

  def create
    @project_category = ProjectCategory.new project_category_params
    if @project_category.save
      redirect_to admin_project_categories_path
    else
      render 'new'
    end
  end

  def edit
    @project_category = ProjectCategory.find(params[:id])
  end

  def update
    @project_category = ProjectCategory.find(params[:id])
    if @project_category.update_attributes(project_category_params)
      redirect_to admin_project_categories_path
    else
      redirect_to edit_admin_project_category_path(@project_category.id)
    end
  end

  def destroy
    @project_category = ProjectCategory.find(params[:id])
    if @project_category.destroy
      render :json =>{msg: 'ok'}
    else
      render :json =>{msg: 'error'}
    end
  end

  private

  def project_category_params
    params.require(:project_category).permit(:name)
  end

end
