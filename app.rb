require 'sinatra/base'

class Rpsls < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    if params[:player_2_name] == nil
      player_2 = ComputerPlayer.new
    else
      player_2 = Player.new(params[:player_2_name])
    end
    @game = Game.generate(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
