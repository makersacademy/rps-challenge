require 'sinatra'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :homepage
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/outcome' do  
    @player_choice = $player.choice(params[:options])
    @computer = Computer.new
    @game = Game.new($player, @computer)
    $result = @game.rps(@player_choice, @computer.choice)
    redirect to('/decider')
  end

  get '/decider' do
    @result = $result
    erb :outcome
  end

  run! if app_file == $0

end
