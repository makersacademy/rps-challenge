require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:intro)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
