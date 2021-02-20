require 'sinatra/base'
require 'classes'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  get '/' do
    erb :index
  end

  post '/submit' do
    session[:player_1_name] = Player.new(params[:player_name])
    session[:player_2_name] = Player.new("computer")
    redirect '/start_game'
  end

  get '/start_game' do
    @player_1_name = session[:player_1_name].name
    erb :start_game
  end

  post '/choice' do
    session[:choice] = params[:name]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
