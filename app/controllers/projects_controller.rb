class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @project = Project.new
    @categories = Category.all
  end

  def create
    @project = Project.new(params.require(:project)
    .permit(:name, :category_id, :location, :stage, :main_social,
            :description, :looking_for, :media_url))
    @project.owner = current_user
    if @project.save
      redirect_to @project
    else
      flash.now[:notice] = 'Não foi possível criar projeto'
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @membership = Membership.new
  end

  def index
    @projects = Project.all
  end
end
