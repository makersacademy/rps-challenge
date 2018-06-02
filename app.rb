require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/randomizer'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    redirect "/play"
  end

  get '/play' do
    @name = $name
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
