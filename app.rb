require "sinatra/base"
require "./lib/game"
require "./lib/computer"

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "super secret"

  get "/" do
    erb(:index)
  end

  post "/register" do
    session[:player_name] = params[:name]
    redirect("/play")
  end

  get "/play" do
    @game = Game.new(session)

    @name = session[:player_name]
    @player_weapon = session[:player_weapon]
    @computer_weapon = session[:computer_weapon]
    erb(:play)
  end

  post "/play" do
    session[:player_weapon] = params[:player_weapon].downcase.to_sym
    session[:computer_weapon] = Computer.new.weapon
    redirect("/play")
  end

  run! if app_file == $0

end