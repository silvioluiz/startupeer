class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    flash[:notice] = 'Nenhum projeto disponível' if @category.projects.empty?
  end
end
