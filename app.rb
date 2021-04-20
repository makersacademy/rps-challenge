require 'sinatra/base'
require 'sinatra/reloader'
require './lib/script'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect :play
  end

  get '/play' do
    erb :play
  end

  post '/pick' do
    @game.player.weapon = params[:weapon]
    @game.computer.random_choice
    redirect :winner
  end

  get '/winner' do
   erb :winner
  end

  run if app_file == $0
end
