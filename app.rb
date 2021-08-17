require_relative 'lib/player'
require_relative 'lib/rps'
require_relative 'lib/robot'
require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure:development do 
    register Sinatra::Reloader
  end

  before do
    @game = Rps.instance
    @game.result
  end

  get '/' do
    erb :index
  end

  post '/welcome' do
    player = Player.new(params[:name])
    robot = Robot.new
    @game = Rps.create(player, robot, 1)
    redirect '/game'
  end

  get '/game' do
    # @game = Rps.instance
    # erb :game_images
    erb :game
  end

  post '/move' do
    # @game = Rps.instance
    @game.player_move.move(params[:move])
    redirect '/result'
  end

  get '/result' do
    # @game = Rps.instance
    @game.result
    # @game.result

    erb :result
    # @game.result
  end

  # get '/defeat' do
  # end
  run! if app_file == $0
end