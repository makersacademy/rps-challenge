require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  get '/result' do
    @player = session[:player]
    @player.weapon = params[:weapon]
    @computer = Computer.new
    @game = Game.new(@player, @computer)
    erb(@game.result)
  end

  run! if app_file == $0
end
