require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  # start the server when ruby file executed directly
  run! if app_file == $0
end
