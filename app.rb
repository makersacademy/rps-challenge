require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:name_entry)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb(:game_start)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
