require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/log_in_one_player' do
    erb :log_in_one_player
  end

  post '/player_name' do
    @player = Player.new(params[:name])
    redirect '/play_one_player'
  end

  get '/play_one_player' do
    erb :play_one_player
  end

end
