require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

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
    computer = Player.new(params[:player])
    @game = Game.create(player, computer)
    redirect :play
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  run if app_file == $0
end
