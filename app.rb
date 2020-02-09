require 'sinatra/base'
require './lib/player'

class Rsp < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do #we put name params to session so we can retrive it later
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    @opponent_shape = session[:opponent_shape]
    erb :play
  end

  post '/play' do  
    session[:shape] = params[:shape]
    session[:opponent_shape]= :rock
    redirect '/play'
  end
  run! if app_file == $0
end

