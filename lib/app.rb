require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/selection' do
    @game = Game.create(params[:choice])
    erb @game.compare
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
