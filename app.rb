require 'sinatra/base'
require './lib/rps'


class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @game = RPS.create
    erb(:play)
  end

  post '/result' do
    @game = RPS.instance
    @player_input = @game.player_input(params[:input])
    @comp_input = @game.move_chooser
    erb(:result)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
