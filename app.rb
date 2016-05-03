require 'sinatra/base'
require './lib/game'
require './lib/player'
# require 'sinatra/cookies'


class RPS < Sinatra::Base
  # helpers Sinatra::Cookies

  enable :sessions

  get '/' do
    # @cookies = cookies
    erb :index
  end

  post '/play' do
    session[:me] = params[:player1_name]
    player = session[:me]
    @game = Game.create(player_klass: Player, player_name: player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    @player = @game.players.first.name
    erb :play
  end

  post '/choice' do
    @game = Game.current_game
    @game.play(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.current_game
    @winner = @game.winner
    erb(:result)
  end

  post '/start_over' do
    Game.reset
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
