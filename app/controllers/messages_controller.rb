class MessagesController < ApplicationController
  before_filter :require_nickname
  
  def index
    @messages = PublicMessage.limit(100).reverse
  end
  
  def create
    @message = PublicMessage.new(params[:public_message])
    @message.from = current_nickname
    @message.save
    OutgoingMessage.create(@message.attributes)
    redirect_to messages_path
  end
end
