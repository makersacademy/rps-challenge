require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    @name = Sessions["Enter name"]
  end
  run! if app_file == $0

end
