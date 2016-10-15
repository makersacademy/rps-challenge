require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/sign_in' do
    @name = Player.new(params[player_1])
    redirect '/play'
  end

  get '/play' do

  
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
