require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/players'

class RPS < Sinatra::Base
  enable :sessions


  get '/' do
    erb :index
  end

  get '/one_player' do
    erb :one_player
  end

  post '/name' do
    player = Players.new(params[:player])
    @game = Game.create(player)
    redirect to '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/select' do
    @game = Game.instance
    @game.set_player_choice(params[:rps])
    redirect to '/outcome'#+params[:rps]
  end

  get '/outcome' do
    @game = Game.instance
    erb :outcome
  end

  post '/2player' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
