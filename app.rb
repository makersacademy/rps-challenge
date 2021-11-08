require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb :play
  end

  get '/result' do
    @game.player_input(params)
    @game.rps
    erb :result
  end

  run! if app_file == $0
end
