class MembershipsController < ApplicationController
  def show
    @membership = Membership.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end

  def create
    project = Project.find(params[:project_id])
    membership = project.memberships.build(params.require(:membership)
                        .permit(:role, :reason, :portifolio, :status))
    membership.user = current_user
    flash[:notice] = 'Partipação pendente de aprovação!' if membership.save
    redirect_to project
  end

  def approve
    @membership = Membership.find(params[:id])
    @membership.approved!
    redirect_to @membership.project
  end
end
