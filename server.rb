require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/ai_player'
require_relative './lib/game_master'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  @@game = GameMaster.new
  @@p_db = []

  get '/' do
    erb :home
  end

  post '/menu' do
    @username = params[:username]
    p = Player.new(@username)
    @@p_db << p
    session[:username] = @username
    session[:ref] = @@p_db.length - 1
    erb :menu
  end

  get '/game' do
    # @game_type = params[:game-type]
    @current_player = @@p_db[session[:ref]]
    @current_player.join(@@game)
    @@game.add AIPlayer.new
    erb :game
  end

  post '/game' do
    @@p_db[session[:ref]].choose(params[:hand].to_sym)
    @winner = @@game.winner
    erb :game_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
