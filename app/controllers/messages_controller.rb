class MessagesController < ApplicationController
  before_action :set_group

  def index
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    @message = current_user.messages.new
    @messages = @group.messages.includes(:user)
  end

  def create
    @message = current_user.messages.new(message_params)

    if @message.save
      redirect_to group_messages_path(@group), notice: 'メッセージを送信しました'
    else
      flash.keep[:alert] = 'メッセージを入力して下さい'
      redirect_to action: :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :image).merge(group_id: params[:group_id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
