class MessagesController < ApplicationController

  before_action :authorised_user

  def index
    @messages = Message.all
  end

  def create
    @message = Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :receiver_id)
  end
end
