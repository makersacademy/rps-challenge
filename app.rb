require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome_rules' do
    puts(params[:player_name])
    $player_name = Player.new(params[:player_name])
    @player_name = $player_name
    erb(:welcome_rules)
  end

  get '/play' do
    @player_name = $player_name
    @player_input = $player_input
    @game = $game
    @result = $result
    @computer_result = $computer_result
    erb(:play)
  end

  post '/attack' do
    @player_name = $player_name
    redirect '/play'
  end

  post '/rock' do
    $game = Game.new(:rock)
    $player_input = :rock
    $result = $game.game_result
    $computer_result = $game.computer_input
    redirect '/play'
  end

  post '/paper' do
    @game = Game.new(:paper)
    $player_input = :paper
    $result = $game.game_result
    $computer_result = $game.computer_input
    redirect '/play'
  end

  post '/scissor' do
    @game = Game.new(:scissor)
    $player_input = :scissor
    $result = $game.game_result
    $computer_result = $game.computer_input
    redirect '/play'
  end


  run! if app_file == $0
end
