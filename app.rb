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




  run! if app_file == $0

end
