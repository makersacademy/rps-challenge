require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base 
  before do
    @game = Game.instance
  end
  
  get '/' do
    erb :index
  end

  get '/start' do 
    erb "start_#{params[:mode]}".to_sym
  end

  post '/add-player' do
    player_1 = Player.new(params[:single_player_name])
    player_2 = Computer.new('HAL')
    Game.create(player_1, player_2)
    redirect '/play-single'
  end

  post '/add-multi' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1, player_2)
    redirect '/play-multi'
  end

  get '/play-single' do
    @player = @game.player_1
    erb :play_single
  end

  get '/play-multi' do
    @player = @game.playing_as
    @opponent = @game.playing_against
    erb :play_multi
  end

  post '/move-single' do
    @game.player_1.move = params[:move].to_sym
    @game.player_2.pick_move
    redirect '/result'
  end

  post '/move-multi' do
    @game.playing_as.move = params[:move].to_sym
    @game.switch_players
    redirect @game.stage
  end

  get '/result' do
    @player = @game.player_1
    @computer = @game.player_2
    erb @game.result(@player)
  end

  get '/result-multi' do
    @player_1 = @game.player_1 # in the case of a draw
    @player_2 = @game.player_2 # in the case of a draw
    @winner = @game.winner
    @loser = @game.loser
    erb :result_multi
  end

  run! if app_file == $0
end
