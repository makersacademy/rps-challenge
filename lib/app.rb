require "sinatra/base"

class RPS < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/game" do
    @name = params["name"]
    erb :game
  end

  get "/game" do
    @choice_text = "You chose #{params["choice"]}." if !params["choice"].nil?
    erb :game
  end
end
