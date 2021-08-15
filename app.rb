require_relative 'lib/player'
require_relative 'lib/rps'
require_relative 'lib/robot'
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
    player = Player.new(params[:name])
    robot = Robot.new
    @game = Rps.create(player, robot)
    redirect '/game'
  end

  get '/game' do
    # session[:move] = params[:move]
    @game = Rps.instance
    erb :game
  end

  post '/move' do
    @game = Rps.instance
    redirect '/result'
    # erb :result
  end

  get '/result' do
    @game = Rps.instance
    erb :result
  end

  # get '/defeat' do
  # end
  run! if app_file == $0
end