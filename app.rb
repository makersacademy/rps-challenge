require 'sinatra/base'


class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    session[:player_name] = params[:name]
    @player_name = session[:player_name]
    erb(:game)
  end

  get '/results' do
    @player_name = session[:player_name]
    erb(:results)
  end
end
