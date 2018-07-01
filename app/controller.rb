require 'Sinatra'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/store_name' do
    $player_name = params[:name]
    redirect '/selection_screen'
  end

  get '/selection_screen' do
    erb :selection_screen
  end

  get '/rock' do
    computer = Computer.new
    player_pick = :rock
    computer_pick = computer.pick
    game = Game.new(player_pick, computer_pick)
    @result = game.result
    erb :result
  end

  get '/paper' do
    computer = Computer.new
    player_pick = :paper
    computer_pick = computer.pick
    game = Game.new(player_pick, computer_pick)
    @result = game.result
    erb :result
  end

  get '/scissors' do
    computer = Computer.new
    player_pick = :scissors
    computer_pick = computer.pick
    game = Game.new(player_pick, computer_pick)
    @result = game.result
    erb :result
  end
end
