class HomeController < ApplicationController
  def index
    @categories = Category.all
    @project = Project.random
    flash.now[:notice] = 'Não existem projetos cadastrados' if @project.nil?
  end
end
