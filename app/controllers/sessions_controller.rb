class SessionsController < ApplicationController

  def new
  end

  def create
    log_in params[:session][:name]
    redirect_to rooms_path
  end

  def destroy
  end
end
