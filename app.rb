require 'sinatra/base'
require 'tilt/erb'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/Player' do
    player = Player.new(params[:player])
    @game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    session[:rps] = params[:rps]
    @rps = session[:rps]
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
