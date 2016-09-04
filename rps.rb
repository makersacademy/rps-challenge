require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :enter_name
  end

  post '/name' do
    Game.create_a_game(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @name = Game.current_game.name
    erb :play
  end

  get '/game' do
    session[:hand1] = params[:hand1]
    @result = Game.current_game.play(session[:hand1])
    @name = Game.current_game.name if @result != Game::RESULTS[0]
    @hand1 = Game.current_game.hands[0]
    @hand2 = Game.current_game.hands[1]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
