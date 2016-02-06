
require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

get '/' do
  erb(:index)
end

post '/play' do
  p params
  $new_game = Game.new(params[:player_1_name])
  erb(:play)
  # redirect to('/play')
end









# start the server if ruby file executed directly
run! if app_file == $0

end
