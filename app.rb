require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissorsLizardSpock < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player = Player.instance
    erb(:play)
  end

  post '/decider' do
    redirect to('/results')
  end

  get '/results' do
    erb(:results)
  end

  run! if app_file == $0
end
