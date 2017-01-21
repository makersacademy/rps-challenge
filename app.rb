require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  set :views, File.dirname(__FILE__) + '/lib/views'
  set :public_folder, File.dirname(__FILE__) + '/lib/public'

  # enable :sessions
  # set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/choose' do
    @game = Game.create(Player.new(params[:player_name], params[:selection]), Player)
    # erb :choose
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
