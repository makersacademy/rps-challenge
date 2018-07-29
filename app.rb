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

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    @game = Game.create(Player, @player_1) # assign @game class variable to new game
    redirect '/play'
  end

  get '/play' do
    @names = @game.names
    @score = @game.score
    erb(:play)
  end

  post '/move' do
    @move = params[:move]
    @game.make_move(@move)
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end
