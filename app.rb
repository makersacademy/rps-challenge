require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one
    erb :play
  end

  run! if app_file == $0
end
