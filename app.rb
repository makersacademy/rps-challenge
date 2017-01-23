require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  set :views, File.dirname(__FILE__) + '/lib/views'
  set :public_folder, File.dirname(__FILE__) + '/lib/public'

  get '/' do
    erb :index
  end

  post '/choose' do
    @game = Game.create(params[:player_1_name], params[:player_1_selection], params[:player_2_name], params[:player_2_selection])
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
