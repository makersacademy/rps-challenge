require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:home)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
    #redirect '/play'
  end

  # post '/play' do
  #   erb(:play)
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
