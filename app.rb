require 'sinatra/base'
require './lib/game'
require './lib/skynet'

class RPS < Sinatra::Base
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
    session[:skynet_tool] = Skynet.new.tool
    redirect '/play'
  end

  run! if app_file == $0
end
