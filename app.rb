require_relative 'lib/game'
require_relative 'lib/rps_images'
require 'sinatra'


class RPS < Sinatra::Base

  include RPSImages

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @game.choose(params[:choice])
    erb @game.result
  end

  get '/restart' do
    @game.set_up_game
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
