require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end
  
  post '/play' do
    session[:player_one] = Player.new(params[:player_one], false)
    session[:player_two] = Player.new("Computer", true)
    redirect '/play'
  end
  
  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]

    session[:game] = Game.new(@player_one, @player_two)
    erb :play
  end

  post '/result' do
    @player_1 = session[:player_one]
    @player_2 = session[:player_two]
    @player_1.play_move(params[:move])
    @player_2.play_move()
    redirect '/result'
  end

  get '/result' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    @game = session[:game]
    erb :result
  end

  run! if app_file == $0
end
