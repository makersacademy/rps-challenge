require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    p params
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name] 
    erb :play 
  end

  post '/input' do
    session[:input] = params[:input]
    p params
    redirect('/result')
  end

  get '/result' do
    @player_name = session[:player_name] 
    @player_input = session[:input]
    @game = Game.new(@player_input)
    erb :result
  end
  
  run! if app_file == $0
end
