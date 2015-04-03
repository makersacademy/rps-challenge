require 'sinatra/base'

class RPSWeb < Sinatra::Base
  get '/' do
    erb :homepage
  end

  get '/one_player_game' do
    erb :one_player_game
  end

  post '/submit_name' do
    "Player 1: #{params[:name]}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
