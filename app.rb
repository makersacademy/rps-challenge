require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb :index
  end
  post "/play" do
    @name = params[:name]
    erb :play
  end
end
