require 'sinatra/base'
require_relative 'game'

class RPSChallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :homepage, layout: false
  end

  post '/' do
    @name = params[:name]
    session[:name] = @name
    redirect '/mode' unless session[:name].empty?
    erb :homepage, layout: false
  end

  get '/mode' do
    @name = session[:name]
    $all_sessions = []
    erb :mode
  end

  get '/lobby' do
    id = session[:session_id]
    $all_sessions << id unless $all_sessions.include?(id)
    redirect '/multiplayer' if $all_sessions.length.even?
    erb :lobby
  end

  get '/singleplayer' do
    @name = session[:name]
    $game1 = Game.new(Player, Moves)
    erb :singleplayer
  end

  post '/singleplayer' do
    @move = params[:move]
    session[:move] = @move
    session[:computer_move] = $game1.player_2.random_move.last.to_s
    $game1.player_1.choose(@move.to_sym)
    redirect '/result'
    erb :singleplayer
  end

  get '/multiplayer' do
    @name = session[:name]
    $moves ||= 0
    $game2 ||= Game.new(Player, Moves)
    erb :multiplayer
  end

  post '/multiplayer' do
    @move = params[:move]
    if identify_player_1
      $game2.player_1.choose(@move.to_sym)
      $moves += 1
    else
      $game2.player_2.choose(@move.to_sym)
      $moves += 1
    end
    redirect '/lobby2'
    erb :multiplayer
  end

  get '/lobby2' do
    redirect '/result2' if $moves.even?
    erb :lobby2
  end

  get '/result' do
    @move = session[:move]
    @computer_move = session[:computer_move]
    erb :result
  end

  get '/result2' do
    @player_1_move = $game2.player_1.choice.last.to_s
    @player_2_move = $game2.player_2.choice.last.to_s
    erb :result2
  end

  def result_message
    return "It's a draw..." if $game1.draw?
    $game1.player_1.winner? ? 'You won!' : 'You lost!'
  end

  def result2_message(player)
    return "It's a draw..." if $game2.draw?
    which_player = (player == 'player_1' ? $game2.player_1 : $game2.player_2)
    which_player.winner? ? 'You won!' : 'You lost!'
  end

  def identify_player_1
    $all_sessions.index(session[:session_id]).even?
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
