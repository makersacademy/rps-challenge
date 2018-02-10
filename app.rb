require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    "Hello"
  end

  run! if app_file == $0
end
