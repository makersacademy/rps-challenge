require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    erb(:play)
  end

  post '/round' do
    @player_choice = params[:RPS]
    erb(:outcome)
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
