require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player] = params[:player]
    @player = Player.new(session[:player], params[:choice])
    erb :play
  end

  get '/result' do
    session[:choice] = params[:choice]
    @@player = Player.new(session[:player], session[:choice])
    @computer = Computer.new
    @game = Game.new(players: [@computer.weapon, @@player.weapon])
    @result = @game.result
    erb :result
  end

  run! if app_file == $0
end
