require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions 
  # keeps state during requests

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
