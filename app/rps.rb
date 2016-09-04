require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/single' do
    erb :single
  end

  post '/single-name' do
    player = Player.new(params[:name])
    @game = Game.create(player, Computer.new)
    redirect '/single-play'
  end

  get '/single-play' do
    @game = Game.instance
    erb :single_play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
