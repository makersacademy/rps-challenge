require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/computer.rb'


class RPS < Sinatra::Base

  enable :sessions
  run! if app_file == $0

  get '/' do
    session[:player_name] = params[:player_name]
    session[:computer] = params[:computer]
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new(params[:computer])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    @computer = $computer
    @player_choice = $player.player_choice
    @computer_choice = $computer.computer_choice
    erb(:play)
  end

  post '/play' do
    @player_name = $player.name
    @computer = $computer
    redirect '/game_running'
  end

  get '/game_running' do
    @player_name = $player.name
    @computer = $computer
    erb(:game_running)
  end

end
