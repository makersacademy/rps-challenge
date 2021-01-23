require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/one_player' do
    erb(:one_player_name)
  end

  post '/name_assign_one_player' do
    session[:player_one_name] = params[:player_one]
    redirect '/character_one_player'
  end

  get '/character_one_player' do
    @player_one_name = session[:player_one_name]
    erb(:character_one_player)
  end

  post '/selection_rock' do
    session[:player_one_character] = params[:rock]
    redirect '/game_one_player'
  end

  post '/selection_paper' do
    session[:player_one_character] = params[:paper]
    redirect '/game_one_player'
  end

  post '/selection_scissors' do
    session[:player_one_character] = params[:scissors]
    redirect '/game_one_player'
  end

  get '/game_one_player' do
    @player_one_character = session[:player_one_character]
    @player_one_name = session[:player_one_name]
    erb(:game_one_player)
  end

  run! if app_file == $0

end
