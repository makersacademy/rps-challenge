require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rpsls < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    if params[:player_2] == 'Computer'
      player_2 = ComputerPlayer.new
    else
      player_2 = Player.new(params[:player_2])
    end
    Game.generate(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/previous_hand' do
    @game = Game.instance
    @game.player_1.hand_chosen(params[:hand])
    @game.player_2.hand
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    "you: #{@game.player_1.hand}, Comp: #{@game.player_2.hand}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
