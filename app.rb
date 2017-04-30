require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions
    set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    $computer = Computer.new("Ogruk")
    redirect '/setup'
  end

  get '/setup' do
    @player = $player.name
    @player_score = $player.score
    @computer = $computer.name
    @computer = $computer.score
    erb :setup
  end

  get '/attack_with_rock' do
    @player = $player.name
    @computer = $computer.name
    @computer_score = $player.computer_score
    $player.attack_with_rock($computer)
    @player_score = $player.score
    erb :attack_with_rock
  end

  get '/attack_with_paper' do
    @player = $player.name
    @computer = $computer.name
    @computer_score = $player.computer_score
    $player.attack_with_paper($computer)
    @player_score = $player.score
    erb :attack_with_paper
  end

  get '/attack_with_scissors' do
    @player = $player.name
    @computer = $computer.name
    @computer_score = $player.computer_score
    $player.attack_with_scissors($computer)
    @player_score = $player.score
    erb :attack_with_scissors
  end

  get '/finish' do
    @player = $player.name
    @computer = $computer.name
    @computer_score = $player.computer_score
    @player_score = $player.score
    erb :finish
  end

  run! if app_file == $0
end
