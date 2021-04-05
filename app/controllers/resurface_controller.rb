require 'resurfaceio/all'

class ResurfaceController < ApplicationController


  def index
      @pong = {message: 'pong'}
      render json: @pong
  end


  def around_action
      HttpLoggerForRails.new(
        url: 'http://localhost:4001/message',
        rules: 'include debug'
      )
  end


end
