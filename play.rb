require 'sinatra/base'
require './lib/game'

class Play < Sinatra::Base
  # configure(:development) { set :session_secret, "My session secret" }
  enable :sessions
  set :session_secret, "My session secret"

  # before do
  #   @game = Game.instance
  # end

  get '/' do
    erb :home
  end

  post '/names' do
    # puts params
    # Game.store(Game.new(extract_names(params)))
    names = extract_names(params)
    names = ["Nabonidus"] if names.empty?
    
    @game = Game.new(names)
    # puts "/names: ", @game.names
    # @game = Game.instance
    # puts @game
    session[:game] = @game
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    # puts "/game: ", @game.class
    players = @game.players
    # puts "players: ", @game.names
    # puts "players: ", players[0].name
    @player_1, @player_2 = @game.names
    @bot = players[1].bot
    # puts "player 1 : ", @player_1.is_a?(Array)
    # puts "player 2 : ", @player_2

    @player_1 = @player_1[0] if @player_1.is_a?(Array)

    if @game.finished?
      redirect '/end_game'
    else
      turn_id, @turn_name = @game.whose_turn?
      @turn_id = ".p_#{turn_id}"
      # puts "turn name:", @turn_name.is_a?(Array)
      @turn_name = @turn_name[0] if @turn_name.is_a?(Array)
    end
    erb :game
  end
  
  post '/rock' do
    @game = session[:game]
    @game.enter_move("R")
    redirect '/game'
  end

  post '/paper' do
    @game = session[:game]
    @game.enter_move("P")
    redirect '/game'
  end

  post '/scissors' do
    @game = session[:game]
    @game.enter_move("S")
    redirect '/game'
  end

  get '/end_game' do
    @game = session[:game]
    @player_1, @player_2 = @game.names
    @bot = @game.players[1].bot
    @game.score if @game.finished?
    @winner = @game.winner
    # puts "winner: ", @winner.move
    @winner == nil ? @draw = true : @draw = false
    @player_1_score, @player_2_score = @game.scores.values
    @game.new_round
    # puts "winner: ", @winner.move
    erb :end_game
  end

  post '/new_game' do
    session[:game] = nil
    redirect '/'
  end

  post '/play_again' do
    redirect '/game'
  end

  run! if app_file == $0
end

def extract_names params
  names = []
  params.each do |k, v|
    if k.match?(/player_\d_name/) and !v.empty?
      names << v
    end
  end

  puts "entered names: ", names
  return names

  # run! if app_file == $0
end