require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end


  get '/' do
    erb(:index)
  end

  post '/name' do
    player_name = params[:player_name]
    @game = Game.create(player_name)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/hit_confirm' do
    erb(:hit_confirm)

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
