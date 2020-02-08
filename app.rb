require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = Player.new(session[:name])
    erb :play
  end

  post '/move' do
    @player = Player.new(session[:name])
    @move = params[:move]
    erb :move
  end

  run! if app_file == $0
end
