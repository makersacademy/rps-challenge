require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require 'byebug'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  set :public_folder, proc { File.join(root, '..', "public") }
  set :views, proc { File.join(root, "..", "views") }

  GAMES = {}
  WAITING_GAMES = []

  get '/' do
    erb :homepage
  end

  get '/play' do
    @player_name = params[:name]
    session[:player_name] = @player_name
    if RockPaperScissors::WAITING_GAMES.empty?
      @game = Game.new
      @player1 = Player.new @player_name
      @game.player1 = @player1
      RockPaperScissors::GAMES[@game.object_id] = @game
      RockPaperScissors::WAITING_GAMES << @game.object_id
      session[:player_num] = 1
    else
      @player2 = Player.new @player_name
      @game = RockPaperScissors::GAMES[RockPaperScissors::WAITING_GAMES.pop]
      @game.player2 = @player2
      session[:player_num] = 2
    end

    session[:game_id] = @game.object_id
    @available_weapons = @game.available_weapons

    erb :gameplay
  end

  get '/play/weapon' do
    @game = RockPaperScissors::GAMES[session[:game_id]]
    @weapon = params[:weapon]
    if @game.player1 && @game.player2
      if session[:player_num] == 1
        @game.assign_weapon @game.player1, @weapon.to_sym
      else
        @game.assign_weapon @game.player2, @weapon.to_sym
      end
    end

    if @game.player1.weapon && @game.player2.weapon
      erb :result
    else
      erb :waiting
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
