require 'sinatra/base'
require 'sinatra'
require 'sinatra/reloader'
#require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  #before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do
    #@game = Game.create(params[:name])
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    @computer_weapon = session[:computer_weapon]
    erb :play
  end

  #needs to route to post '/play' (which redirects to /result)
  
  post '/play' do
    session[:weapon] = params[:weapon]
    session[:computer_weapon] = :rock
    redirect '/results'
  end


  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
