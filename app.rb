require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/welcome' do
    player = Player.new(params[:player_1_name])
    @game = Game.create(player)
    erb :welcome
  end

  get '/round' do
    @game = Game.instance
    erb :result
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
