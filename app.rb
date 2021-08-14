require_relative 'lib/player'
require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure:development do 
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/welcome' do
    $player = Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    # $game = Rps.new(params[:move])
    erb :game
  end

  # get '/victory' do
  # end

  # get '/defeat' do
  # end
  run! if app_file == $0
end