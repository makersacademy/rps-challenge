require 'sinatra/base'
# require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/play' do
    @@player_one = params[:player_one]
    if params[:two_player] == "true"
      redirect '/player_two'
    else
      @game = Game.create(@@player_one)
      redirect '/play'
    end
  end

  get '/player_two' do
    erb(:player_two)
  end

  post '/play_two' do
    @player_two = params[:player_two]
    @game = Game.create(@@player_one, @player_two)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # run! if app_file == $0
end
