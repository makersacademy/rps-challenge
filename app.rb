require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/npc'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @choice = params[:player_choice]
    @result = @game.play(@choice)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
