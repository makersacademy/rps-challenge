require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissorsApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/selection' do
    @game = Game.create(params[:Player1], params[:Player2])
    erb(:selection)
  end

  run! if app_file == $PROGRAM_NAME
end
