require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'
require './lib/result_calculator'

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
    redirect '/p1_play'
  end

  get '/p1_play' do
    @game = Game.instance
    erb(:play_p1_hand)
  end

  post '/p1_hand' do
    game = Game.instance
    game.player_1.hand_chosen(params[:hand])
    if game.player_2.is_a? ComputerPlayer
      redirect '/result'
    else
      redirect '/p2_play'
    end
  end

  get '/p2_play' do
    @game = Game.instance
    erb(:play_p2_hand)
  end

  post '/p2_hand' do
    game = Game.instance
    game.player_2.hand_chosen(params[:hand])
    redirect '/result'
  end

  get '/result' do
    game = Game.instance
    p1_hand = game.player_1.hand
    p2_hand = game.player_2.hand
    result_calc = ResultCalculator.new(p1_hand, p2_hand).player1_wins?
      if result_calc == "Draw"
        @result = result_calc
      elsif result_calc == true
        @result = "#{game.player_1.name} wins"
      else
        @result = "#{game.player_2.name} wins"
      end
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
