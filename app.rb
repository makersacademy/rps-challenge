require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/play" do
    player = Player.new(params[:player_name])
    @player_name = player.name
    erb :play
  end

  run! if app_file == $0
end
