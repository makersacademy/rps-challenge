require 'sinatra/base'
require './models/player'
require './models/rps'
require './models/game'
require './models/cpu'
require './models/printer'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/welcome_message' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/winner' do
    @game.select_player_move(params[:moves])
    @game.select_cpu_move
    erb(:winner)
  end

end
