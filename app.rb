require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rsp < Sinatra::Base

  before do
    @game = Game.now
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new( params[:player] )
    @game = Game.init( player )
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
