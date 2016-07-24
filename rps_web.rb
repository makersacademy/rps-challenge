require 'sinatra/base'

class RSPWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    # $player_name = params[:player_name]
    @game = Game.create(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    # $player_name
    erb :play
  end

  post '/choose_weapon' do
    $weapon = params[:weapon]
    redirect '/results'
  end

  get '/results' do
    $player_name
    $weapon
    erb :results
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
