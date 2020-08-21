require "sinatra/base"

class App < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post '/get_name' do 
    session[:player] = params[:Player]
    redirect "/options"
  end

  get "/options" do
    @player_name = session[:player]
    erb :options
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
