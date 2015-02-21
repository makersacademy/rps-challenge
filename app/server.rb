require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new {File.join(root, "..", "views")}
  enable :sessions
  game = Game.new
  player = Player.new

  get '/' do
    erb :index
  end

  get '/player' do
    @name = params[:name]
    erb :player
  end

  post '/player' do
    session[:player] = player
    @name = params[:name]
    erb :game
  end

  get '/game' do
    session[:player] = player
    @name = params[:name]
    erb :game
  end

  post '/game' do
    session[:player] = player
    @name = params[:name]
    erb :result
  end

  post '/result' do
    @name = params[:name]
    player = session[:player]
    @computer = game.random
    @player = player.choice(params[:game])
    @result = game.result(@player, @computer)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
