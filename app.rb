require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  get "/names" do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get "/play" do
    @player = $player
    erb :play
  end

  run if app_file == $0
end
