class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @categories = Category.all
  end

  def create
    @project = Project.new(params.require(:project)
    .permit(:name, :user, :category_id, :location, :stage, :main_social,
            :description, :looking_for, :media_url))
    if @project.save
      redirect_to @project
    else
      flash.now[:notice] = 'Não foi possível criar projeto'
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def new_member
    @project = Project.find(params[:id])
    @project.users << current_user
    redirect_to @project
  end
end
