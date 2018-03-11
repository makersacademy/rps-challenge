require "sinatra"
require 'sinatra/base'
require "./lib/player.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end


  get '/' do
    erb(:index)
  end


  post '/names' do
    player1 = Player.new(params[:player_1_name])
    @game = Game.create(player1)
    redirect('/play')
  end


  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/move' do
    @game = Game.instance
    @game.select_move(params[:hand])
    redirect(:result)
  end

  get '/result' do
    @game = Game.instance

    erb(:result)
  end

  run! if app_file == $PROGRAM_NAME
end
