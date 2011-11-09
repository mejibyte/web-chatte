class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:nickname].present?
      session[:nickname] = params[:nickname]
      redirect_to messages_path
    else
      render "new"
    end
  end
  
  def destroy
    session.delete(:nickname)
    redirect_to new_session_path, :notice => "See you soon!"
  end
end
