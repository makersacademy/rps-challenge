require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player1' do
    $player_1 = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rps' do
    redirect '/result'
  end

  get '/result' do
    'Rock!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
