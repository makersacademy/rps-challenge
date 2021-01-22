require 'sinatra'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/plays'
  end

  get '/play' do
  @player_1_name = sessions[:player_1_name]
  @player_2_name = sessions[:player_2_name]
  erb(:play)
end