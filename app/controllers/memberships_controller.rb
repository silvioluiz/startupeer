class MembershipsController < ApplicationController
  def show
    @membership = Membership.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end
end
