require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.rock
    redirect '/selection'
  end

  post '/paper' do
    @game.paper
    redirect '/selection'
  end

  post '/scissors' do
    @game.scissors
    redirect '/selection'
  end

  get '/selection' do
    erb :selection
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
