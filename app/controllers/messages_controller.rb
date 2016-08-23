class MessagesController < ApplicationController

  def index
    @messages = expense.messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
      if @message.save
        redirect_to expense_messages_path(@expense)
      else
        render :new
      end
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end
end
