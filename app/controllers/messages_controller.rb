class MessagesController < ApplicationController
    before_action :logged_in_user

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.save
            send_message
        else
            render status: 422, json: @message.errors
        end
    end

    def send_message
        ActionCable.server.broadcast(
            "RoomChannel_#{@message.room_id}",
            @message
        )
    end

    private

    def message_params
        params.require(:message).permit(:content, :user, :room_id)
    end

end
