require 'sinatra/base'
require './lib/game'


class RockPaperScissors < Sinatra::Base
    enable :sessions

  get '/'  do
    'Hello world'
  end

  get '/login' do
    erb :login
  end

  post '/names' do
    session[:player_1_name] = params["player_1_name"]
    redirect '/round'
  end

  get '/round' do
    @player_1_name = session[:player_1_name]
    erb :round
  end

  post '/result' do
    session[:player_round_choice] = params["round_choice"].to_sym
    redirect '/result'
  end

  get '/result' do
    @game = Game.new
    @result = @game.result(session[:player_round_choice])
    @player_1_name = session[:player_1_name]
    @player_round_choice = session[:player_round_choice]
    erb @result
  end

  run! if app_file == $0
end
