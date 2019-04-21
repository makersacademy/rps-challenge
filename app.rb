require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/decide-winner' do
    session[:player_choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @game_choice = ['Rock', 'Paper', 'Scissors'].sample
    erb(:result)
  end

  run! if app_file == $0
end
