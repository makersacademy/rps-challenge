require "sinatra/base"
require "./lib/player"

class App < Sinatra::Base

  enable :sessions

  before do 
    @player = Player.instance
  end

  get "/" do
    erb :index
  end

  post '/get_name' do 
    @player = Player.create(params[:Player])
    redirect "/options"
  end

  get "/options" do
    erb :options
  end

  post "/player_choice" do
    @player.round_choice(params[:option])
    redirect "/options"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
