require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $player = params[:player_1]

    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
