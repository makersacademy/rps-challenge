require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
