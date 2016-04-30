require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RpS < Sinatra::Base
enable :sesions
  get '/' do
    erb :index
  end
get '/name' do
  erb :name

end
  post '/name' do
    @game = Game.new.create(Player.new(params[:player]),Computer.new)
    # @player= Player.new(params[:player])
    redirect '/play'
  end
  get '/play' do
    @game = Game.instance
    erb :play
  end
  # post '/move' do
  #
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
