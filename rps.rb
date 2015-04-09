require 'sinatra/base'
require 'byebug'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/multiplayer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  MULTIPLAYER = Multiplayer.new

  get '/' do
    erb :index
  end

  get '/chose' do
    @player_name = params[:name]
    @game_type = params[:type]
    @sess = session['session_id']
    session['name'] = @player_name
    session['type'] = @game_type
    erb :chose
  end

  get '/matchmaking' do
    @search = params[:search]
    session['chose'] = params[:el].to_sym if @search.nil?
    @sess = session['session_id']
    @player_name = session['name']
    @player_chose = session['chose']
    @game_type = session['type']
    @ready = @search && MULTIPLAYER.ready?(@sess, @game_type)

    redirect to('/play?vs=cpu') if params[:opponent] == 'cpu'
    redirect to('/play?vs=human') if @ready

    if @search.nil?
      if MULTIPLAYER.games_available?(@game_type)
        MULTIPLAYER.add @sess, @player_name, @player_chose, @game_type
        redirect to('/play?vs=human')
      else
        MULTIPLAYER.create @sess, @player_name, @player_chose, @game_type
      end
    end
    erb :matchmaking
  end

  get '/play' do
    @sess = session['session_id']
    @player_name = session['name']
    @player_chose = session['chose']
    @game_type = session['type']

    if params[:vs] == 'cpu'
      @opponent_name = 'CPU'
      @opponent_chose = [:rock, :paper,
                         :scissors].sample if @game_type == "classic"
      @opponent_chose = [:rock, :paper,
                         :scissors, :lizard,
                         :spock].sample if @game_type == "lizspock"
    elsif params[:vs] == 'human'
      MULTIPLAYER.begin_game @sess, @game_type
      @curr_game = MULTIPLAYER.find_game @sess, @game_type
      @opponent = MULTIPLAYER.find_opponent @sess, @game_type
      @opponent_name = @opponent[0][1]
      @opponent_chose = @opponent[0][2]
      @opponent_played = @opponent[0][3]

      MULTIPLAYER.remove @curr_game, @sess, @game_type
    end

    @player1 = Player.new @player_name
    @player2 = Player.new @opponent_name
    @game = Game.new @player1, @player2
    @game.player1.choose @player_chose
    @game.player2.choose @opponent_chose

    @result = @game.play

    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
