class MessagesController < ApplicationController
  before_action :logged_in_user

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_back(fallback_location: root_path)
    else
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user, :room_id)
  end

end
