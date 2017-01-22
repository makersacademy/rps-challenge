require 'sinatra/base'
require 'tilt/erb'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/player'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/draw' do
    @player1 = Player.new(params[:choice], @player_1_name)
    @computer = Computer.new
    @game = Game.new(@player1.choice, @computer.choice)
    erb :draw
  end

  run if app_file == 'app/rps_web.rb'
end
