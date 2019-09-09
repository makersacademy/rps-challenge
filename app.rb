require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_name]))
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player_1.store_choice(params[:choice].to_sym)
    erb(:choice)
  end 

  post '/result' do
    @comp_choice = @game.computer
    @result = @game.result(@game.player_1.choice, @comp_choice)
    erb @result
  end

  run! if app_file == $0
end
