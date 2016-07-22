require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    @player = Player.new(params[:name])
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
