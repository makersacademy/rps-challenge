require "sinatra/base"
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.player.choose_rock
    redirect to('/result')
  end

  post '/paper' do
    @game = Game.instance
    @game.player.choose_paper
    redirect to('/result')
  end

  post '/scissors' do
    @game = Game.instance
    @game.player.choose_scissors
    redirect to('/result')
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end




  run! if app_file == $0

end
