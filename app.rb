require "sinatra"

class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/players' do
    session[:name_one] = params[:name_one]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:name_one]
    erb :play
  end

  get '/single_player_rps' do
    @player_1_name = session[:name_one]
    erb :sp_rps
  end

end