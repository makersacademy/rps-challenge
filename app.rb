require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    @players = params[:players]
    session[:players] = @players.to_i
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2_name = params[:player2_name] == nil ? "Computer" : params[:player2_name]
    player2 = Player.new(player2_name)
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @message = session[:message]
    erb(:play)
  end

  post '/fight' do
    @game = Game.instance
    session[:message] = @game.fight_with(params[:weapon])
    redirect '/win' if @game.winner != ""
    redirect '/play'
  end

  get '/win' do
    @game = Game.instance
    erb(:win)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
