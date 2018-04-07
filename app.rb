require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @name = @game.player.name
    erb(:play)
  end






  run! if app_file == $0

end
