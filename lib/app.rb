require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post "/play" do
    @player_1 = Player.new(params['player-name'])
    erb :play
  end

  run! if app_file == $0
end
