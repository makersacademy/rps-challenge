require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/opponent.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = Player.new(session[:name])
    erb :play
  end

  get '/game' do
    @move = params[:move]
    @opponent = Opponent.new
    @opponent.choose
    erb :game
  end

  run! if app_file == $0
end
