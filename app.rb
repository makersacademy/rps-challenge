require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
 enable :sessions


  get '/' do
    erb :player
  end

  get '/one_player' do
    erb :one_player
  end

  get '/two_players' do
    erb :two_players
  end

  post '/one_player_name' do
    session[:player_name] = params['player_name']
    redirect '/play_one_player'
  end

  post '/two_player_names' do
    session[:player_one_name] = params['player_one_name']
    session[:player_two_name] = params['player_two_name']
    @player_1 = session[:player_one_name]
    @player_2 = session[:player_two_name]
    erb :set_up
  end


  get '/play_one_player' do
    @player_1 = session[:player_name]
    @player_2 = Computer.new
    erb :play_one
  end

  get '/play_two_players' do
    @player_1 = session[:player_one_name]
    @player_2 = session[:player_two_name]
    erb :player_one_choice
  end

  post '/player_two_choice' do
    session[:player_one_choice] = params['choice']
    @player_2 = session[:player_two_name]
    erb :player_two_choice
  end


  post '/one_player_result' do
    @player_1 = Player.new(session[:player_name])
    @player_2 = Computer.new
    @player_1.choose(params['choice'])
    @game = Game.new(@player_1, @player_2)
    @game.play
    erb :result
  end

  post '/two_player_result' do
    @player_1 = Player.new(session[:player_one_name])
    @player_2 = Player.new(session[:player_two_name])
    @player_1.choose(params['choice'])
    @player_2.choose(session[:player_one_choice])
    @game = Game.new(@player_1, @player_2)
    @game.play
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
