require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
  erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
