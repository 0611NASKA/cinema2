class MembersController < ApplicationController
  before_action :login_required

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end
end
