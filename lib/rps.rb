require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_name]
    erb(:play)
  end

  post '/result' do
    $game = Game.new(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
