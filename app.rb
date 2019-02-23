require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/player' do
    @game = Game.create(params[:name])
    erb :game
  end

  post '/play' do
    @game = Game.instance
    @result = @game.play(params[:rps])
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
