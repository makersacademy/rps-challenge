require 'sinatra/base'
require './lib/computer'


class Game < Sinatra::Base


  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = params[:name]
    erb(:play)
  end

  get '/results' do
    @player_weapon = params[:weapon]
    @comp_weapon = Computer.new.weapon_selection
    erb(:results)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
