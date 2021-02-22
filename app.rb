require 'sinatra/base'
require './lib/rps.rb'
require './lib/player.rb'
require './lib/game_log.rb'

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

  post '/move' do
    @game.play(params[:move])
    redirect to('/play')
  end

  run! if app_file == $0

end
