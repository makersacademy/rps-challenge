require 'sinatra/base' # research base
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions # research :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/player_names' do
    @game = Game.create(params[:player])
    redirect '/new_game'
  end

  get '/new_game' do
    erb(:play)
  end

  # get '/move' do
  #   redirect "/defeat" if @game.current_player.points == 3
  #   @game.make_move
  #   erb(:move)
  # end

  get '/defeat' do
    erb(:defeat)
  end

  # run! if app_file == $0
end
