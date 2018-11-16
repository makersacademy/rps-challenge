require 'sinatra/base'

class Rps < Sinatra::Base

enable :sessions

  get '/' do
    erb(:login)
  end

  post '/player_info' do
    session[:name] = params[:name]
    redirect to('/game_lobby')
  end

  get '/game_lobby' do
    @name = session[:name]
    erb(:player_details)
  end

  post '/player_move' do
    @name = session[:name]
    session[:move] = params[:move]
    redirect to('/results')
  end

  get '/results' do
    @move = session[:move]
    @name = session[:name]
    erb(:result_calculation)
  end

end
