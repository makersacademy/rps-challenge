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

  post '/play-game' do
    player = HumanPlayer.new(params[:player_name])
    session[:player] = player
    redirect '/play-game'
  end

  get '/play-game' do
    @player_name = session[:player].name
    erb :play_game
  end

  post '/game-result' do
    session[:player].choice = params[:player_choice].downcase.to_sym
    redirect '/game-result'
  end

  get '/game-result' do
    human_player = session[:player]
    computer_player = ComputerPlayer.new('Computer')
    computer_player.choice
    @result = Game.new.play(human_player,computer_player)
    erb :game_result
  end

  run! if app_file == $0
end
#
# post '/play-game' do
#   player = HumanPlayer.new(params[:player_name])
#
#   session[:player_name] = params[:player_name]
#   redirect '/play-game'
# end
#
# get '/play-game' do
#   @player_name = session[:player_name]
#   erb :play_game
# end
#
# post '/game-result' do
#   session[:player_choice] = params[:player_choice]
#   redirect '/game-result'
# end
#
# get '/game-result' do
#   player_choice = session[:player_choice].downcase.to_sym
#   @result = Game.new.play(player_choice,ComputerPlayer.new.choice)
#   erb :game_result
# end
