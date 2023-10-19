class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages, each_serializer: MessagesSerializer
  end

  def create
    message = Message.new(message_params)

    if message.save
           render json: message, serializer: MessagesSerializer
    else
            render json: message.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:message, :created_by)
  end
end
