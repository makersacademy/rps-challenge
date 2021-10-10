require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/game"
require_relative "./lib/player"

class RockPaperScissor < Sinatra::Base
  use Rack::Session::Pool

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    session[:game] = Game.new
    erb :index
  end

  post "/start" do
    session[:game].human = Player.new(params[:player_name])
    redirect "/play"
  end

  post "/choose" do
    session[:game].choose(params[:player_choice])
    redirect "/play"
  end

  get "/play" do
    @game = session[:game]
    erb :play
  end

  run! if app_file == $0
end
