require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
 enable :sessions


  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params['player_name']
    redirect '/play'
  end

  get '/play' do
    @player_1 = Player.new(session[:player_name])
    @player_2 = Computer.new
    erb :play
  end

  post '/result' do
    @player_1 = Player.new(session[:player_name])
    @player_2 = Computer.new
    @player_1.choose(params['choice'])
    $game = Game.new(@player_1, @player_2)
    $game.play
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
