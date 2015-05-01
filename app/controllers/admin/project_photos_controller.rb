# encoding: utf-8
class Admin::ProjectPhotosController < Admin::AdminController
  def index
    @project_photos = ProjectPhoto.order('id desc')
  end

  def new
    @project_photo = ProjectPhoto.new
  end

  def create
    @project_photo = ProjectPhoto.new project_photo_params
    if @project_photo.save
      redirect_to admin_project_photos_path
    else
      render 'new'
    end
  end

  def edit
    @project_photo = ProjectPhoto.find(params[:id])
  end

  def update
    @project_photo = ProjectPhoto.find(params[:id])
    if @project_photo.update_attributes(project_photo_params)
      redirect_to admin_project_photos_path
    else
      redirect_to edit_admin_project_photo_path(@project_photo.id)
    end
  end

  def destroy
    @project_photo = ProjectPhoto.find(params[:id])
    if @project_photo.destroy
      render :json =>{msg: 'ok'}
    else
      render :json =>{msg: 'error'}
    end
  end

  private

  def project_photo_params
    params.require(:project_photo).permit(:project_id, :image, :small_image)
  end

end
