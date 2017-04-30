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

  get '/attack' do
    @player = $player.name
    @computer = $computer.name
    @computer = $computer.score
    $player.attack_with_rock($computer)
    @player_score = $player.score
    erb :attack
  end

  run! if app_file == $0
end
