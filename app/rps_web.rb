require 'sinatra'
require_relative '../lib/player'
require_relative '../lib/game'

class RPSWeb < Sinatra::Application
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/results' do
    @game = $game
    if @game.result(params[:move]) == 'draw'
      erb :draw
    elsif @game.result(params[:move]) == 'win'
      erb :win
    elsif @game.result(params[:move]) == 'lose'
      erb :lose
    end
  end

end
