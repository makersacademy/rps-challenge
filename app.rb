require "sinatra"
require 'sinatra/base'
require "./lib/player.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base
  enable :sessions



  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
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

  run! if app_file == $PROGRAM_NAME
end
