require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  post '/choice/:id' do
    p params
    @choice = params["id"]
    erb :play
  end

  get '/play' do
    erb :play
  end
  
  run! if app_file == $0
end
