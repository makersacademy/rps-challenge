require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome_rules' do
    $player_name = Player.new(params[:player_name])
    @player_name = $player_name
    $result = :start
    $player_input = ""
    $computer_result = ""
    $user_score = 0
    $computer_score = 0

    erb(:welcome_rules)
  end

  get '/play' do
    @player_name = $player_name
    @player_input = $player_input
    @game = $game
    @result = $result
    @computer_result = $computer_result
    @user_score = $user_score
    @computer_score = $computer_score
    if (@result == "You Win!")
      @user_score +=1
    elsif @result == "You Lose!"
      @computer_score +=1
    end
    $user_score = @user_score
    $computer_score = @computer_score
    erb(:play)
  end

  post '/attack' do
    @player_name = $player_name
    redirect '/play'
  end
  before do
    $game = Game.new
  end

  post '/rock' do
    $player_input = :rock
    $result = $game.game_result($player_input)
    $computer_result = $game.computer_input
    redirect '/play'
  end

  post '/paper' do
    $player_input = :paper
    $result = $game.game_result($player_input)
    $computer_result = $game.computer_input
    redirect '/play'
  end

  post '/scissor' do
    $player_input = :scissor
    $result = $game.game_result($player_input)
    $computer_result = $game.computer_input
    redirect '/play'
  end


  run! if app_file == $0
end
