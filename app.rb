require 'sinatra/base'
require_relative 'lib/weapons'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    unless params[:choice].nil?
      game = Game.new
      result = game.play(params[:choice])
      session[:result] = "The result is .... You #{result}"
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
