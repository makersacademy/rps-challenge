require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  use Rack::Session::Pool, :expire_after => 2592000

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    erb :play
  end

  post '/results' do
    @player1_name = $player1.name
    erb :results
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
