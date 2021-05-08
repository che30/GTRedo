class GroupsController < ApplicationController
  before_action :authenticate_user!,only: [:show,:index,:new]
  def index
    @groups = Group.all.order(name: 'ASC')
  end

  def new
    @group = Group.new 
  end
  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      flash[:notice] = 'group created with succes'
      redirect_to groups_path
    else
      flash.now[:danger] = 'there are some errors while saving the form'
      render 'new'
    end
  end

  def show
    @group = Group.find_by(id: params[:id])
    @transactions = Transaction.includes(:group, :user).where(group_id: @group.id).order('created_at DESC')
  end

  private

  def group_params
    params.require(:group).permit(:name, :avatar)
  end

end
