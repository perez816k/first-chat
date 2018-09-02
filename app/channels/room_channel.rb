class RoomChannel < ApplicationCable::Channel
    # Called when the consumer has successfully
    # become a subscriber to this channel.
    def subscribed
        stream_from "RoomChannel_#{params[:id]}"
    end

    def unsubscribed
    end
end