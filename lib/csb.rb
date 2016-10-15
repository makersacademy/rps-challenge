require 'sinatra/base'

class CSB < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/setup' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  post '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
