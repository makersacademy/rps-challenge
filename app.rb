require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
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
    @player_choice = params[:players_choice]
    erb(:play)
  end

  post '/choice' do
    redirect '/computer'
  end

  get '/computer' do
    erb(:computer)
  end


  end


#
# run! if app_file == $0
