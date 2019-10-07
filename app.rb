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
    erb(:play)
  end

  post '/choice' do
    session[:players_choice] = params[:players_choice]
    redirect '/result'
  end

  get '/result' do
    @players_choice = session[:players_choice]
    @computer_choice = ['Rock', 'Paper', 'Scissors'].sample
    erb(:choice)
  end
end

#
# run! if app_file == $0
