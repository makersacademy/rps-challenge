require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rpsgame < Sinatra::Base

  configure do
    set :session_secret, "awonkywillawentaway"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    erb(:result)
  end

end
