require 'sinatra/base'
require './lib/player'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/rock' do
    redirect '/result'
  end

  get '/paper' do
    redirect '/result'
  end

  get '/scissors' do
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
