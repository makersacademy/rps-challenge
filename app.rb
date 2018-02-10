require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::base

  get '/' do

  end

  run! if app_file == $0
end
