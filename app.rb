require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/choose'
  end

  get '/choose' do
    @game = $game
    erb(:choose)
  end

  post '/choice' do
    @game = $game
    @game.player_choice(params[:player_1_choice])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @winner = @game.win?(@game.computer_choice?,@game.player_1_choice)
    erb(:result)
  end

  run! if app_file == $0

end
