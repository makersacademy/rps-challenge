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

  post '/rock' do
    @game.player.set_weapon(:rock)
    redirect to('/result')
  end

  post '/paper' do
    @game.player.set_weapon(:paper)
    redirect to('/result')
  end

  post '/scissors' do
    @game.player.set_weapon(:scissors)
    redirect to('/result')
  end

  get '/result' do
    @game.play
    erb(@game.result)
  end

  post '/back' do
    redirect to('/')
  end






  run! if app_file == $0

end
