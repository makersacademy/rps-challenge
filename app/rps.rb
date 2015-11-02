require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/player_store'
require_relative '../lib/standard_rules'
class RPS < Sinatra::Base

  enable :sessions

  helpers do
    def store(player)
      PlayerStore.add(player.object_id, player)
      session[:player_id] = player.object_id
    end
    def retrieve
      PlayerStore.find(session[:player_id])
    end
  end

  get '/' do
    erb :register
  end

  post '/setup' do
    player1 = Player.new(params[:name])
    store(player1)
    redirect '/play'
  end

  get '/play' do
    player1 = retrieve
    @player_name = player1.name
    erb :play
  end

  post '/go' do
    player1 = retrieve
    player2 = Computer.new(StandardRules)
    game = Game.new(StandardRules, player1, player2)
    game.player1_hand = params[:hand]
    game.player2_hand = nil
    result = game.play
    @player1_name = game.player1_name
    @player2_name = game.player2_name
    @player1_hand = game.player1_hand
    @player2_hand = game.player2_hand
    erb result
  end

  post '/continue' do
    player1 = retrieve
    case params[:decision]
    when "New Game?"
      redirect '/'
    when "Continue?"
      redirect '/play'
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
