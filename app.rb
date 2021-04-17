require 'sinatra'
require 'sinatra/reloader' if development?

class Rps < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player_name])
    @game = Game.new(@player)
    $game = @game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_name = @game.player.name
    erb :play
  end

end
