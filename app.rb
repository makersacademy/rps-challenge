require "sinatra"
require "./lib/game"

class Rps < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/game' do
    @game = Game.start_game(params[:name])
    redirect('/game')
  end

  get '/game' do
    @player_one = @game.player_one
    erb(:game)
  end

  run! if app_file == $0
end
