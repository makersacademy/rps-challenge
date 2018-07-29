require 'sinatra'
require 'securerandom'
require './lib/game'
require './lib/player'
class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  before do
    @game = Game.instance # use games class method to return stored game instance
  end

  # multi use methods for our two play links

  def play_methods
    @names = @game.names
    @score = @game.score
    @move = session[:move]
  end

  get '/' do
    erb(:index)
  end

  get '/play-1p' do
    play_methods
    erb(:play)
  end

  get '/play-2p' do
    play_methods
    erb(:play2p)
  end

  get '/winner' do
    play_methods
    @winner = @game.players[@game.score.index(5)].name
    @loser = @game.players[@game.score.index(5) + 1].name
    erb(:winner)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    @player_2 = params[:player_2_name]
    @game = Game.create(Player, @player_1, @player_2) # assign @game class variable to new game
    session[:playpage] = @game.num_players == 1 ? '/play-1p' : './play-2p'
    redirect session[:playpage] # store link in session for use on redirects
  end

  post '/move' do
    @move = @game.num_players == 1 ? params[:move] : [params[:p1_move], params[:p2_move]]
    redirect session[:playpage] if @move.last.nil? # prevent crashing if no move
    @game.num_players == 1 ? @game.make_move(@move) : @game.make_move(@move[0], @move[1]) 
    redirect('/winner') if @game.game_over
    redirect session[:playpage]
  end

  run! if app_file == $PROGRAM_NAME

end
