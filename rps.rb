require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:player]
    player = Player.new(@name)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
