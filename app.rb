require 'sinatra/base'
require './lib/player'

class RPSGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new
    erb :play
  end

  # start the server when ruby file executed directly
  run! if app_file == $0
end
