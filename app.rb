require "sinatra"
require "./lib/player"
require "./lib/game"
require "./lib/round"

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post "/names" do
    player1 = Player.new(params[:player_1_name])
    if params[:player_2_name].empty?
      player2 = Computer.new
    else
      player2 = Player.new(params[:player_2_name])
    end
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rps' do
    @game = $game
    @game.new_round
    @game.turn.throw(params[:throw].to_sym)
    @game.switch_turn
    @game.act_for_computer
    @game.calculate_outcome
    
    if @game.round.outcome.nil?
      redirect '/play'
    else 
      redirect '/result'
    end
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
