require 'sinatra/base' # research base
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions # research :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/player_names' do
    @game = Game.create(params[:player]) # creates new hashes
    redirect '/new_game'
  end

  get '/new_game' do
    erb(:play)
  end

  post '/move' do
    @game.player.chosen_move(params[:move])
    redirect '/outcome'
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0
end
