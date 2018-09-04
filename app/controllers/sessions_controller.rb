class SessionsController < ApplicationController

    def create
        log_in params[:session][:name]
        redirect_to rooms_path
    end

end
