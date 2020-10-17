require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/play' do
    @name = params[:name]
    erb :play
  end

  post '/results' do
    @game = Game.new(params[:choice], Computer.new)
    @result = @game.result
    erb :results
  end

  run! if app_file == $0
end
