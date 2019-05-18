require 'sinatra/base'

class Rps < Sinatra::Base
  get "/" do
    "Welcome to Rock, Paper, Scissors!"
    erb :index
  end

  post "/names" do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
