require 'sinatra'
require 'securerandom'
require './lib/game'
require './lib/player'
class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    @game = Game.create(Player, @player_1)
    redirect '/play'
  end

  get '/play' do
    @names = @game.names
    @score = @game.score
    erb(:play)
  end

  post '/move' do

    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end
