require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/choices'
require_relative 'lib/game_log'
require_relative 'lib/rps_game'

class RPS < Sinatra::Base
  enable :sessions

  get('/') do
    erb(:splash)
  end

  get('/single_player_name') do
    erb(:single_player_name)
  end

  post('/single_player_name') do
    choices  = Choices.new
    rps_game = RPSGame.new(choices)
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new
    GameLog.create(player_1, player_2,rps_game)

    redirect('/single_player_play')

  end

  get('/single_player_play') do
    @game = GameLog.instance
    erb(:single_player_play)
  end

  post('/player_1_selection') do
    session[:player_1_selection] = params[:selection]
    redirect('/single_player_fight')
  end

  get('/single_player_fight') do
    @game = GameLog.instance
    @scorecard = @game.scorecard
    random_choice = @game.current_game.choices.random_choice
    @game.play_game(session[:player_1_selection],random_choice)
    # require'pry';binding.pry
    erb(:single_player_fight)
  end

  get('/end_round') do
    redirect('/single_player_fight')
  end



#MULTIPLAYER GETS
  get('/multiplayer_names') do
    erb(:multiplayer_names)
  end



  post('/multiplayer_names') do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect('/multiplayer_play')
  end

  get('/multiplayer_play') do
    @player_1 = Player.new(session[:player_1_name])
    @player_2 = Player.new(session[:player_2_name])
    erb(:multiplayer_play)
  end




end
