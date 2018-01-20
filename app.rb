require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    @name = params["Enter name"]
    "Welcome to the game, #{@name}"
  end
  run! if app_file == $0

end
