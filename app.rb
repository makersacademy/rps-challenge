require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  get '/' do
    erb :index
  end

  post '/submit' do
    session[:player_name] = params[:player_name]
    redirect '/start_game'
  end

  get '/start_game' do
    @player_name = session[:player_name]
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
