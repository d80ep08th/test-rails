# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'resurfaceio/all'

use HttpLoggerForRack,
  url: 'http://localhost:4001/message',
  rules: 'include debug'

run Rails.application
