class RoomsController < ApplicationController
    before_action :logged_in_user

    def logged_in_user
        unless logged_in?
            redirect_to root_url
        end
    end

    def show
        @rooms = Room.all
    end

    def new
        @room = Room.new
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
