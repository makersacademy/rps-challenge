require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :player_chooses
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    
    #game = Game.new

  end

  run! if app_file == $0
end
