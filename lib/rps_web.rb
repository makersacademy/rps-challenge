require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    $all_session = []
    erb :index
  end

  post '/' do
    session[:player] = params[:first_name]
    @name = session[:player]
    redirect '/' if @name == ''
    p params
    p session
    erb :index
  end

  get '/botgame' do
    $game = Game.new(Player)
    erb :botgame
  end

  post '/botgame' do
    @rps = params[:rps]
    $game.player_1.play(@rps.to_sym)
    bot_play
    erb :botgame
  end

  get '/lobby' do
    sid = session[:session_id]
    $all_session << sid unless $all_session.include?(sid)
    redirect '/multiplayer' if $all_session.count.even?
    erb :lobby
  end

  get '/multiplayer' do
    @current_player = ($all_session.index(session[:session_id]) + 1).to_s
    $game = Game.new(Player)
    $game.reset_last_played
    erb :multiplayer
  end

  post '/multiplayer' do
    @rps = params[:rps]
    if session_id_even?
      $game.player_1.play(@rps.to_sym)
    else
      $game.player_2.play(@rps.to_sym)
    end
    redirect '/two_player_results'
    erb :multiplayer
  end

  get '/two_player_results' do
    @player_1_count = $game.player_1.played.count
    @player_2_count = $game.player_2.played.count
    @winner = $game.player_1_win?
    @player = session[:player]
    erb :two_player_results
  end

  def bot_play
    random_play = [:rock, :paper, :scissor].sample
    $game.player_2.play(random_play)
  end

  def session_id_even?
    $all_session.index(session[:session_id]).even?
  end

  def session_id_odd?
    $all_session.index(session[:session_id]).odd?
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
