require 'sinatra/base'
require './lib/game'
require './lib/player'


class Rock_Paper_Scissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.player.select_choice([params[:choice]])
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
