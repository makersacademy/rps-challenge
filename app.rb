require 'sinatra/base'
# require_relative './lib/player'
# require_relative './lib/game'

class RPS < Sinatra::Base
  attr_reader :player_1, :weapon

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    erb(:play)
  end

  post '/select' do
    @weapon = params[:weapon]
    erb(:attack)
  end

  get '/opponent' do
    erb(:view_weapons)
  end

  run! if app_file == $0
end
