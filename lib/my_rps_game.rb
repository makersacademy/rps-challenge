require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RpsApp < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_dir, Proc.new {File.join(root, "..", "public")}

  game = Game.new
  enable  :sessions

  get '/' do
    erb :index
  end

  get '/hello' do
    @name = session[:me].name
    erb :index
  end

  get '/new_player' do
    erb :choice
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
    erb :result
  end

  post '/result' do
    computer = Computer.new
    player_choice = game.player.choice(params[:choice])
    p session[:choice] = params[:choice]

    @computer_choice = computer.choice
    p @computer_choice
    @match_result = game.winner(player_choice.capitalize, @computer_choice.capitalize)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
