class MembershipsController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    membership = project.memberships.build(params.require(:membership)
                        .permit(:role, :reason, :portifolio, :status))
    membership.user = current_user
    flash[:notice] = 'Partipação pendente de aprovação!' if membership.save
    redirect_to project
  end
end
