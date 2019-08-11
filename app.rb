require 'sinatra/base'
require './lib/player'
require './lib/game'
class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end
  
  post '/choice' do
    @game = $game
    choice = params[:player_choice]
    @game.current_turn.choice.replace(choice)
    @game.switch_turns
    redirect '/play'
  end

  get '/hit' do
    @game = $game
    @game.hit(@game.player_1, @game.player_2)
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end
