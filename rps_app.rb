require 'sinatra/base'
# require './lib/player'
# require './lib/game'
class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    # player_1 = Player.new(params[:player_name])
    erb(:names)
  end
  run! if app_file == $0
end
