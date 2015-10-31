require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player_name
  end

  get '/multi_player' do
    erb :multi_player_name
  end

  post '/playernames' do
    $player_1 = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/game' do
    # Game.new(params.keys.first)
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
