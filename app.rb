require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader    
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @player_turn = session[:player_turn]
    @cpu_turn = 'rock'
    session[:cpu_turn]
    erb(:play)
  end

  post '/play' do
    session[:player_turn] = params[:turn]
    @game = Game.new(params[:turn])
    session[:cpu_turn] = @game.cpu_turn
    # @game = Game.new(params[:turn], randomPick)
    # @game.who_won
    redirect '/play'
  end

  run! if app_file == $0
end
