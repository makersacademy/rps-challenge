require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/set_choice' do
    $game = Game.new(params[:player_choice])
  end


















  # start the server if ruby file executed directly
  run! if app_file == $0
end
