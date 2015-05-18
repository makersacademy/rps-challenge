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
    # Unimplemented: choose winning score, type of game, type of opponent
    @@game ||= Game.new Player

    # Name entry checks
    if params.has_key?('name')
      redirect '/' unless params[:name].length > 0
      @@name ||= {}
      @@name[session[:player_id]] = params[:name]
    elsif not(defined?(@@name))
      redirect '/'
    end

    # Check if it's my turn, hold if not
    # Waiting on setup of two player mode

    # Check if a move's been submitted
    if params.has_key?('Rock')
      @@game.send(session[:player_id]).play :Rock
    elsif params.has_key?('Paper')
      @@game.send(session[:player_id]).play :Paper
    elsif params.has_key?('Scissors')
      @@game.send(session[:player_id]).play :Scissors
    end

    # Use game.players to check no. of players and decide what to do
    # In this version, game.players will always == 1
    if @@game.players == 1
      @@game.player_2.play :auto

    end

    # Make variables accessible from the ERB file
    @name = @@name[session[:player_id]]
    erb :play

  end

  get '/play' do
    # THIS SHOULD NEVER BE CALLED?!
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
