class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params.require(:project)
    .permit(:name, :user, :category, :location, :stage, :main_social,
            :description, :looking_for))
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
end
