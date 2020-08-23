require 'sinatra'
require 'sinatra/base'
require 'shotgun'


class RPS < Sinatra::Base
 enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/selection' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb :result
  end





 
  run! if app_file == $0
end