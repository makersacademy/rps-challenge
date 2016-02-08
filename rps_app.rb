require 'sinatra/base'
require './lib/game'
require './lib/player'

# RPSApp class
class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    @player_count = session[:player_count]
    erb(:index)
  end

  post '/players' do
    session[:player_count] = params[:player_count]
    redirect to '/'
  end

  post '/names' do
    name1 = params[:player_1_name]
    name2 = params[:player_2_name]
    session[:game] = Game.new(Player.new(name1), Player.new(name2))
    redirect to '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/weapon' do
    @game = session[:game]
    @game.turn.weapon = params[:weapon]
    @game.set_turn
    redirect to @game.stage
  end

  get '/endround' do
    @game = session[:game]
    erb @game.round_result, :layout => :weapons
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
