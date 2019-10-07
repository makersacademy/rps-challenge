require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  # Homepage
  get '/' do
    erb(:index)
  end

  # Homepage input referer
  post '/players' do
    @players = params[:players]
    session[:players] = @players.to_i
    erb(:index)
  end

  # Name saving, bootup game and redirect
  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2_name = params[:player2_name].nil? ? "Computer" : params[:player2_name]
    player2 = Player.new(player2_name)
    @rps = RPSGame.create(player1, player2)
    redirect '/weapons'
  end

  # Weapon choosing
  get '/weapons' do
    @rps = RPSGame.instance
    @message = session[:message]
    erb(:weapons)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
