require 'sinatra/base'
require './lib/game'
require './lib/computer_player'
require './lib/player'

class RockPaperScissors < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    computer_player = ComputerPlayer.new
    Game.create(player1, computer_player)
    redirect '/game_intro'
  end

  before do
    @game = Game.instance
  end

  get '/game_intro' do
    erb :game_intro
  end


  post '/results' do
    weapon = params[:weapon].to_sym
    @game.player_choose_weapon(weapon)
    redirect '/results'
  end

  get '/results' do
    @game.computer_choose_weapon
    erb :results
  end

  run! if app_file == $0
end
