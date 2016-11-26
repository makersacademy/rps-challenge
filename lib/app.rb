require 'sinatra/base'
require_relative 'player.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    player = Player.new(params[:human_player1])
    redirect to('/game')
  end

  get '/game' do
    erb(:options)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
