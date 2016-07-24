require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    $human_player = Player.new(params[:human_player])
    redirect '/play'
  end

  get '/play' do
    @human_player_name = $human_player.name
    erb(:play)
  end

  post '/choices' do
    session[:human_player_choice] = params[:value]
    @human_player_choice = $human_player.choice
    erb(:choices)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
