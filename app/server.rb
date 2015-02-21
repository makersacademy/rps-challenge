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
    erb :player
  end

  post '/player' do
    session[:player] = player
    @player_name = params[:name]
    erb :game
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    erb :result
  end

  post '/result' do
    player = session[:player]
    @computer = game.random
    @player = player.pick(params[:game])
    @result = game.result(@player, @computer)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
