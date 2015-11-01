require 'sinatra/base'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/choose' do
    $shape = params[:shape]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @shape = $shape
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end