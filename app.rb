require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:player_name])
    Game.create(player)
    @game = Game.instance
    @name = @game.player_name
    erb :play
  end

  before do
     @game = Game.instance
  end

  get '/winner' do
    puts "Params:"
    p params
    @sign = params[:sign]
    @name = @game.player_name

    erb :winner
  end

  run! if app_file == $0
end
