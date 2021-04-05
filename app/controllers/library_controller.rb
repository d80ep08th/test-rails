require 'resurfaceio/all'

class LibraryController < ApplicationController
  def index
  end

  around_action HttpLoggerForRails.new(
   url: 'http://localhost:4001/message',
   rules: 'include debug'
  )

end
