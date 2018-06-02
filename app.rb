require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/randomizer'
require './lib/determinewinner'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(params[:name])
    redirect "/play"
  end

  get '/play' do
    @game = $game
    @name = @game.player
    erb :play
  end

  post '/player_choice' do
    @game = $game
    @game.players_choice(params[:player_choice])
    redirect '/final_result'
  end

  get '/final_result' do
    @game = $game
    erb :final_result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
