require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    @human_player = Player.new(params[:human_player])
    erb(:play)
  end

  # get '/play' do
  #   erb(:play)
  # end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
