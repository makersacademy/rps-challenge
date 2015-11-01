require 'sinatra/base'
require './lib/player'
class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register' do
    $player = Player.new(params[:player])
    redirect '/welcome'
  end

  get '/welcome' do
    @player = $player
    erb(:welcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
