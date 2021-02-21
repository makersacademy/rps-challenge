require 'sinatra/base'
require './lib/rps.rb'
require './lib/player.rb'


class RockPaperScissors < Sinatra::Base
enable :sessions
  before do
    @game = RPS.game
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    RPS.create(Player.new(params[:name]))
    redirect to('/play')
  end

  get '/play' do
    @name = @game.player.name
    erb(:play)
  end

  get '/rock' do
    @game.play("rock")
    redirect to('/play')
  end

  get '/paper' do
    @game.play("paper")
    redirect to('/play')
  end

  get '/scissors' do
    @game.play("scissors")
    redirect to('/play')
  end

end
