class RoomsController < ApplicationController
    before_action :logged_in_user

    def index
        @rooms = Room.all
    end

    def show
        @room = Room.find(params[:id])
    end

    def create
        @room = Room.new(room_params)
        if @room.save
          redirect_to rooms_url
        else
          render 'new'
        end
    end

    private

    def room_params
      params.require(:room).permit(:name)
    end

end
