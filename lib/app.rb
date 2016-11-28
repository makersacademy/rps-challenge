require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:name])
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/selection' do
    @game.set_user_choice(params[:choice])
    erb @game.compare
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
