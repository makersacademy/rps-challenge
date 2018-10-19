require 'sinatra/base'
require_relative "./lib/player"

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :home
  end

  post '/' do
    redirect '/no_name' if params[:name_1].empty?
    player_1 = params[:name_1]
    Game.store_game(Game.new(Player.new(player_1)))
    redirect '/play'
  end

  get '/no_name' do
    erb :home_no_name
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.choose_weapon(params[:weapon])
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  run! if app_file == $0
end
