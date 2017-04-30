require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rock_Paper_Scissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_tool] = params[:tool].downcase.to_sym
    session[:skynet_tool] = Computer.new.tool
    redirect '/play'
  end

  run! if app_file == $0
end
