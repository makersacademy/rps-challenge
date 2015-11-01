require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect ('/play')
  end

  get '/play' do
    @player_name = $player_name
    erb(:play)
  end

  post '/result' do
    @option = params[:option]
    srand(1)
    @computer_move = ['rock', 'paper', 'scissors'].sample
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
