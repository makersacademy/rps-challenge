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
  end

  post '/playerchoice' do
    @game.player.set_choice(params.values[0])
    redirect '/winner'
  end

  get '/winner' do
    erb :winner
  end

  post '/continue' do
   if params.values[0] == "Yes"
     redirect '/'
   else
     erb :bye
   end
  end

  run! if app_file == $0
end
