class GroupsController < ApplicationController

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.save(create_params)
    if @group.save
      redirect_to root_path, notice: "グループを作成しました"
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  private

  def create_params
    params.require(:group).permit(:name, { :user_ids => [] })
  end

end
