require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game_type' do
    params[:game_type] == "singleplayer" ? redirect('/singleplayer') : redirect('/multiplayer')
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/name_splayer' do
    @name = params[:player]
    player = Player.new(@name)
    computer = Computer.new
    Game.create(player, computer)
    redirect '/play'
  end

  post '/names_mplayer' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.create(player1, player2)
    redirect '/play_step1'
  end

  get '/play_step1' do
    @game = Game.instance
    erb :play_step1
  end

  post '/play_step2' do
    @game = Game.instance
    @game.add_player1_choice(params[:choice].to_sym)
    erb :play_step2
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    if @game.player_2.class == Computer
      @player1_choice = params[:choice].to_sym
      @player2_choice = @game.player_2.choice
    else
      @player1_choice = @game.player_1_choice
      @player2_choice = params[:choice].to_sym
    end
    @winner = @game.play_game(@player1_choice, @player2_choice)
    erb :result
  end

  get '/after_result' do
    @game = Game.instance
    if @game.player_2.class == Computer
      params[:choice] == "play_again" ? redirect('/play') : redirect('/')
    else
      params[:choice] == "play_again" ? redirect('/play_step1') : redirect('/')
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
