require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Game.new(params[:name])
    p $player
    redirect('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
