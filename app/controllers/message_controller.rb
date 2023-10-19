class MessageController < ApplicationController
  def index
              @message = 'Hello, RuboCop!'
        render json: { message: @message }
  end
end
