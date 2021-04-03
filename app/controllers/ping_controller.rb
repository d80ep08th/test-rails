class PingController < ApplicationController
  def index
      @pong = {message: 'pong'}
      render json: @pong
  end
end
