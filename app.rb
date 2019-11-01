require "sinatra"
require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions
  get "/" do
    erb :index
  end

  post "/name" do
    @player_name = params[:player_1]
    erb :play
  end

  run! if app_file == $0
end
