require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    "Welcome to Rock Paper Scissors!"
    erb :index
  end

  post '/enter_name' do
    @player_name = params[:enter_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
