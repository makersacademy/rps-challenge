require "sinatra"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/play" do
   $player = Player.new(params[:name])
   redirect "/play"
  end

  get "/play" do
   @player_name = $player.name
   erb(:play)
  end

  post "/result" do
    $player.choice = params
    redirect "/result"
  end

  get "/result" do
    @choice = $player.choice
    p @choice
    erb(:result)
end

  run! if app_file == $0
end
