class RoomController < ApplicationController
    before_action :logged_in_user
    before_action :exists_room

    def logged_in_user
        unless logged_in?
            redirect_to root_url
        end
    end
    
    def exists_room
        unless Room.exists?(params[:id])
            redirect_to rooms_url
        end
    end

    def show
        @room = Room.find(params[:id])
    end

end
