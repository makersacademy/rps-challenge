require "sinatra"
require "./lib/game"

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.current_game
  end

  post '/game' do
    @game = Game.start_game(params[:name])
    redirect('/game')
  end

  get '/game' do
    @player_one = @game.player_one
    erb(:game)
  end

  post '/end' do
    redirect('/end')
  end

  get '/end' do
    @player_one = @game.player_one
    erb(:end)
  end

  get '/' do
    redirect('/')
  end

  run! if app_file == $0
end
