require 'sinatra/base'
require './lib/player'

class Rsp < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do #we put name params to session so we can retrive it later
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do  
    session[:player_shape] = params[:shape].downcase.to_sym
    session[:opponent_shape]= Opponent.new.shape
    redirect '/play'
  end
  run! if app_file == $0
end

