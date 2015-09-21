require 'sinatra/base'
require_relative 'lib/human_player'
require_relative 'lib/computer_player'
require_relative 'lib/game'


class RockPaperScissorsWeb < Sinatra::Base
  enable :sessions
  set :views, proc{File.join(root, '' , 'views')}

  get '/' do
    erb :index
  end

  post '/choose-game' do
    player = HumanPlayer.new(params[:player_name])
    session[:player] = player
    redirect '/choose-game'
  end

  get '/choose-game' do
    @player_name = session[:player].name
    erb :choose_game
  end

  post '/play-game' do
    session[:game_choice] = params[:game_choice]
    redirect '/play-game'
  end

  get '/play-game' do
    @game_choice = session[:game_choice]
    if @game_choice == "rps"
      erb :play_rps_game
    else
      erb :play_rpsls_game
    end
  end

  post '/game-result' do
    session[:player].choice = params[:player_choice].to_sym
    @game_type = session[:game_choice].downcase.to_sym
    redirect '/game-result'
  end

  get '/game-result' do
    human_player = session[:player]
    computer_player = ComputerPlayer.new('Computer',@game_type)
    game = Game.new(human_player,computer_player,@game_type)
    @player_choice = human_player.choice
    @computer_choice = computer_player.make_choice
    @result = game.result
    erb :game_result
  end
end
