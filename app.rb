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
    @players_choice = params[:players_choice]
  erb(:play)
  end

  get '/choice' do
    @player_name = session[:player_name]
    @players_choice = params[:players_choice]
 erb(:choice)
end

  get '/computer' do


 end




  end

#
# run! if app_file == $0
