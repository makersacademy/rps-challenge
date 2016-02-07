require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    $game =nil
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    session[:name1] = params[:name1]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    erb(:play)
  end

  get 'game_over' do
    
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
