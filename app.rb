require 'sinatra/base'
require './lib/player'
require './lib/game'

# keep me slim controller
class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  set :public_folder, File.dirname(__FILE__) + '/'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/registered' do
    player_1 = Player.new(params[:player_1])
    # player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1)
    redirect '/play', 302
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player_choice(params[:choice].to_sym)
    @game.game_pick
    redirect '/result', 302
  end

  get '/result' do
    erb :result
  end

  post '/next_round' do
    @game.update_round
    redirect '/play', 302
  end

end
