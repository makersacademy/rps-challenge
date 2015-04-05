require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :homepage
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
