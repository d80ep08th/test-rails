require 'resurfaceio/all'

class ResurfaceController < ApplicationController

  around_action HttpLoggerForRails.new(
    url: 'http://localhost:4001/message',
    rules: 'include debug'
  )

  def index
      @pong = {message: 'pong'}
      render json: @pong
  end

end
