require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :root
  end

  get "/play" do
    erb :play
  end

  get "/result" do
    erb :result
  end

end
