require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2, results = Results.new(player_1, player_2))
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @current_player = @game.current_player.name
    erb :play
  end

  post '/play' do
    @game.turn(params[:choice])
    p @game.results
    p @game.results.winner
    if @game.game_over == true
      redirect('/results')
    else
      redirect('/play')
    end
  end

  get '/results' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @winner = @game.results.winner.name
    @player_1_choice = @game.player_1.choice
    @player_2_choice = @game.player_2.choice
    erb :results
  end

  run! if app_file == $PROGRAM_NAME
end
