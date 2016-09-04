require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player])
    @player = player
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player_choice = nil
    erb(:play)
  end

  post '/choices' do
    @game.player_choice = params[:id]
    @game.computer_choice
    redirect '/result'
  end

  get '/result' do
    @game.player_choice = params[:id]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
