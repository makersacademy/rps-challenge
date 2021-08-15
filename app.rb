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
    
    # redirect '/result'
  end

  post '/result' do
    @move = session[:move]
    # p @move
    # @game = Rps.new(@move)
    erb :result
  end
  # get '/victory' do
  # end

  # get '/defeat' do
  # end
  run! if app_file == $0
end