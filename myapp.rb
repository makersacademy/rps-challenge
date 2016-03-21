require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
     redirect '/play'
  end

  get '/play' do
    @player = $player.name
    @player.choice(params[:weapon])
    erb :play
  end

  post '/result' do
    @player = $player.name
    erb :result
  end

# # start the server if ruby file executed directly
  run! if app_file == $0
end