require 'sinatra/base'
require_relative 'random_weapon_generator'
require_relative 'game'

class RpsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game_page' do
    $game = new_game(params["name"])
    erb :game_page
  end

  post '/play' do
    weapon = params["weapon"].to_sym
    @result = $game.play weapon
    erb :game_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  private

  def new_game name
    game = Game.new name
    game
  end
end
