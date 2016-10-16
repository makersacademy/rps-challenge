require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name-lit' do
    @player = Player.new(params[:marketeer_name])
    erb(:lit_play)
  end
  #
  # get '/beef' do
  #
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
