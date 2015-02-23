require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RpsApp < Sinatra::Base
    set :views, Proc.new { File.join(root, "..", "views") }

  game = Game.new
  enable  :sessions

  get '/' do
    erb :index
  end

  get '/hello' do
    @name = session[:me].name
    erb :index

  end

  post '/new_player' do
    # session[:player] = Player.new(params[:player_name])
    player = Player.new(params[:player_name])
    session[:player_name] = player.name
    game.add_player(player)
    erb :choice
  end

  get '/game' do
    @name = session[:player_name]

    erb :choice
  end

  get '/result' do
    @choice = params[:choice]
    game.player.choice = @choice
    session[:choice] = @choice

    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
