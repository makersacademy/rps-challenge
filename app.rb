require "sinatra"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new((params[:player_1]), (params[:player_2]))
    redirect '/play'
  end

  post '/scissors' do
    @game = $game 
    @game.current_move("scissors")
    @game.switch_turn
    redirect '/play'
  end

  post '/rock' do
    @game = $game 
    @game.current_move("rock")
    if @game.player_2.attack
      @game.draw
      @game.win_rock
    end
    @game.switch_turn
    redirect '/play'
  end

  post '/paper' do
    @game = $game 
    @game.current_move("paper")
    @game.switch_turn
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end 