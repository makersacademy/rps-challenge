require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/new_player" do
    @name = params["name"]
    "Welcome #{@name}"
    # redirect "/start"
  end

  # get "/start" do
  #   Welcome
  # end


  run! if app_file == $0
end
