require 'sinatra/base'
require './lib/player.rb'


class Rsp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/play' do
    @player = Player.new( params[:player] )
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
