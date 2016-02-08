require 'sinatra/base'
require './lib/game'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:name]
    @name=$name
    redirect to '/play'
  end

  get '/play' do
    @name = $name
    erb :play
  end

  post '/process-results' do
    $player_response = params[:weapon]
    redirect to '/results'
  end

  get '/results' do
    game = Game.new
    @player_response = $player_response
    @result = game.play(@player_response)
    erb :results
  end

  run! if app_file == $0
end
