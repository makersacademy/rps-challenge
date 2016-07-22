require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
  @player_one =  Player.new params[:player_one]
  @player_two =  Player.new params[:player_two]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
