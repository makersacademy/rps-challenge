require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    player_name = (params[:player_name]).capitalize
    player = Player.new(player_name)
    @game = Game.create(player)
    erb :playerchoice
    #redirect '/playerchoice'
  end

  post '/playerchoice' do
    p params
    @game.player.set_choice(params.values[0])
    redirect '/winner'
  end

  get '/winner' do
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
