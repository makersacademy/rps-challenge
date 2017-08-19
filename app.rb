require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb(:play)
    # redirect "/play"
  end

  # get '/play' do
  #   erb(:play)
  #   @player_1_name
  # end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
