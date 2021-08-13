require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post "/name" do
    $player = Player.new(params[:name])
    redirect "/play"
   end

  get "/play" do
    @player = $player.name 
    erb :play
  end

  run! if app_file == $0
end
