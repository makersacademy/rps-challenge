require "sinatra/base"


class RPS < Sinatra::Base

  get "/" do
    erb :name
  end

  post "/welcome" do
    @player_name = params[:player_name]
  end




  run! if app_file ==$0
end