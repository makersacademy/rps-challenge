require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player1_name = params[:player1_name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
