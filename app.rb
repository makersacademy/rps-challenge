require 'sinatra/base'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
