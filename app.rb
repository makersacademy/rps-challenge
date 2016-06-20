require 'sinatra/base'
require_relative 'lib/rps.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = RPS.instance
  end

  get '/' do
    erb :index
  end

  post '/players' do
    player_1 = Player.new(params[:player_1_name])
    player_2  = Player.new(params[:player_2_name])
    @game = RPS.create(player_1, player_2)
    redirect '/multiplayer'
  end

  post '/player' do
    player_1 = Player.new(params[:single_player_name])
    player_2  = Computer.new
    @game = RPS.create(player_1, player_2)
    redirect '/single'
  end

  get '/single' do
    erb :single_play
  end

  get '/multiplayer' do
    erb :play
  end

  get '/multiplayer2' do
    erb :play2
  end

  post "/single_player_select" do
    @game.players[0].player_move(params[:single_select])
    @game.players[1].player_move
    redirect '/result'
  end

  post '/player1_select' do
    @game.players[0].player_move(params[:pick_option1])
    redirect '/multiplayer2'
  end

  post '/player2_select' do
    @game.players[1].player_move(params[:pick_option2])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
