class DummyController < ApplicationController
  def index
    @message = 'Hello, RuboCop!'
    render json: { message: @message }
  end

  def create
    @message = params[:message]
    if @message.blank?
      render json: { error: 'Message cannot be blank' }, status: :unprocessable_entity
    else
      render json: { success: true, message: @message }, status: :created
    end
  end

  def show
    @message = "Hello, RuboCop!"
    render json: { message: @message }
  end
end
