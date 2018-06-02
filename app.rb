require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :root
  end

  get "/play" do
    erb :play
  end

end
