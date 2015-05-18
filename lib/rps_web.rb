require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPSWeb < Sinatra::Base
  # Some basic setup stuff to get Sinatra working
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  # Welcome screen and name entry
  get '/' do
    # player id - basic one player version
    unless session.has_key?('player_id')
      session[:player_id] = :player_1
    end

    erb :index
  end

  post '/play' do
    # Create game if it doesn't exist yet
    # Unimplemented: Spock and Lizard
    @@game ||= Game.new Player, params[:score].to_i

    # Check if a player name's been entered, store if so
    if params.has_key?('name')
      redirect '/' unless params[:name].length > 0
      @@name ||= {}
      @@name[session[:player_id]] = params[:name]
    elsif not(defined?(@@name))
      redirect '/'
    end

    # Check if a move's been submitted
    if params.has_key?('Choice')
      @@game.send(session[:player_id]).play params[:Choice]
    end
  end

  # This handles non-form activities
  get '/play' do

    # In a one player game, take computer's move
    if @@game.players == 1
      @@game.player_2.autoplay
    end

    # End the turn if both players have made a move
    if @@game.turn_over?
      @outcome = @@game.end_turn
      @my_play = @@game.send(session[:player_id]).played
      @their_play = @@game.send(session[:player_id]).played


      erb :turnResult
    else
      # If waiting on other player, divert to a holding screen
      redirect '/wait'
    end

    # Check if the game's won and redirect if so
    redirect '/gameover' if @@game.game_over?

    # Show the 'choose your play' form
    @name = @@name[session[:player_id]]
    erb :play
  end

  # Shows a holding page. Gets re-called every 4s until turn completion
  get '/wait' do
    redirect '/play' if @@game.turn_over?
    erb :waitToPlay
  end

  get '/gameover' do
    if @@game.send(session[:player_id]).won_game?
      erb :gameWon
    else
      erb :gameLost
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
