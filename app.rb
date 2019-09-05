require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissorsApp < Sinatra::Base


  get '/' do
    erb(:index)\
  end
  
  run! if app_file == $PROGRAM_NAME
end
