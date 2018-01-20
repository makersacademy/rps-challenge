require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    @name = params["Enter name"]
    erb :play
  end

  post "/result" do
    @result = params["attack"]
    "Derek chose #{@result}"
  end

  run! if app_file == $0

end
