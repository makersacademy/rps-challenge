require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
