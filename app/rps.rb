require 'sinatra/base'
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base

    enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    erb(:play_rps)
  end

  post "/select" do
  

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
