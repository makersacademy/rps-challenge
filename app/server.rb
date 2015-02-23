require 'sinatra/base'
require './lib/player'

class RPSLS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/newgame' do
    erb :newgame
  end

  post '/newgame' do
    if params[:name].empty?
      @message = "What is your name?"
      erb :newgame
    else
      player1 = Player.new(params[:name])
      @player1 = player1.name
      erb :newgame
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
