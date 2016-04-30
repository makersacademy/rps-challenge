require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:player_1_name]
    redirect("/play")
  end

  get "/play" do
    @name = $name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
