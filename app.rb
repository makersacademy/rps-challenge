require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/player' do
    @name = params[:name]
    erb :game
  end

  post '/play' do
    game = Game.new
    @result = game.play(params[:rps])
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
