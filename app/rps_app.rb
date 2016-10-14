require 'sinatra/base'

class RPSApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :intro
  end

  post '/names' do
    $player_1 = params[:player_1_name]
    redirect '/choices'
  end

  get '/choices' do
    @player_1 = $player_1
    erb :choices


  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
