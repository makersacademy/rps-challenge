require 'sinatra/base'

class Rpsls < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    # @player_1 = Player.new params[:player_1_name]
    # @game = Game.create(@player_1)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
