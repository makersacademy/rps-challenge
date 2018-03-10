require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/select' do
    

  end

  run! if app_file == $0
end
