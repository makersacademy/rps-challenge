require 'sinatra/base'
# require_relative './lib/player'
# require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
attr_reader :player_1
  post '/names' do
    @player_1 = params[:player_1_name]
    erb(:play)
  end

  run! if app_file == $0
end
