require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end
  
  post '/play' do
    @player = Player.new(params[:name])
    $game = Game.new(@player)
    @game = $game
    erb(:play)
  end
  
  get '/game' do
    @choice = params[:choice]
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
