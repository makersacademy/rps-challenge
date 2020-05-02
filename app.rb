require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name].capitalize
    erb(:play)
  end

   post '/move' do
     session[:move] = params[:move]
     redirect '/rps'
   end

  get '/rps' do
    @name = session[:name].capitalize
    @player_move = session[:move]
    erb(:rps)
  end

  run! if app_file == $0

end
