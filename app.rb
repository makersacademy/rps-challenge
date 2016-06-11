
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    redirect '/game'
  end

  post '/game' do
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
