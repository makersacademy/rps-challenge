require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = "Computer"
    erb(:play)
  end

  post '/enter_name' do
    $player_1_name = params[:player_1_name]
    redirect '/play'
  end

  run! if app_file == $0

end
