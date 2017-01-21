require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :enter_names
  end

  post '/names' do
    player_1 = Player.new(name: params[:p1_name])
    player_2 = Player.new(name: params[:p2_name], human: (params[:player_2_type] == 'human'))
    p player_1
    p player_2
    redirect '/play'
  end

  get '/play' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
