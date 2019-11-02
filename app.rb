require 'sinatra/base'


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
    @player_1_name = session[:player_1_name]
    session[:player_round_choice] = params["round_choice"]
    redirect '/viewresult'
  end

  get '/viewresult' do
    @player_1_name = session[:player_1_name]
    @player_round_choice = session[:player_round_choice]
    erb :viewresult
  end

  run! if app_file == $0
end
