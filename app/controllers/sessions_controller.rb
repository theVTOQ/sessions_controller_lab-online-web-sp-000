class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to "/login"
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end
end
