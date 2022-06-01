require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/player.rb'
# require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end