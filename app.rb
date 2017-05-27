require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new("Computer")
    @game = Game.create(player_one, player_two)
    redirect('/play')
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/result' do
    erb(:win)
  end



end
