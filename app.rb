require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/start' do
    player_1 = Player.new(params[:name])
    player_2 = Player.new('Computer')
    mode = params[:mode]
    if mode == 'standard'
    	@game = Game.create(player_1, player_2, true)
    else
    	@game = Game.create(player_1, player_2, false)
    end
    redirect '/play'
  end

  get '/play' do
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
