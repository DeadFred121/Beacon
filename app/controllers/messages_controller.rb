class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end
    if @messages.last
      @messages.last.read = true if @messages.last.user_id != current_user.id
    end
    @message = @conversation.messages.new
   end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    redirect_to conversation_messages_path(@conversation) if @message.save
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
