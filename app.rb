require 'sinatra/base'
require './lib/player.rb'
require './lib/result.rb'
require './lib/move'


class GAME < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $computer_player = Player.new("THE COMPUTER")
    @player_1_name = $player_1.name
    @player_2_name = $computer_player.name
    erb(:names)
  end

  get '/game_ready_to_start' do
    erb(:game_ready_to_start)
  end


  get '/gameresult' do
    @player1result = $player_1.select_move(Move.new(params[:user_move]))
    @computer_playerresult = "paper"

    @result = Result.new(@player1result, @computer_playerresult)
    erb(:gameresult)
  end
  run! if app_file == $0
end
