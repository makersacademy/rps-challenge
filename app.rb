require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:start_screen)
  end

  post '/names' do
    players_name = Player.new(params[:players_name])
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
