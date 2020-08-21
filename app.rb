require "sinatra/base"

class App < Sinatra::Base
  get "/" do 
    erb :index
  end

  get "/options" do
    @player_name = params[:Player]
    erb :options
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
