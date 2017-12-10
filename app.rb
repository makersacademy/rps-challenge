arequire 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/challenge' do
    @game = Game.create(params[:player_name])
    erb(:play)
  end

  post '/winner' do
    @game.result(params[:weapon_choice])
    erb(:result)
  end

  run! if app_file == $0
end
