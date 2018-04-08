require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end


  run! if app_file == $0
end
