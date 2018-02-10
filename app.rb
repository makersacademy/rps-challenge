require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/single_game'

class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  get '/single' do
    erb(:single)
  end

  # get '/multi' do
  #   erb(:multi)
  # end

  post '/name' do
    player = Player.new(params[:player_1_name])
    @single_game = SingleGame.create(player)
    redirect '/play'
  end

  get '/play' do
    @single_game = SingleGame.instance
    erb(:play)
  end

  get '/attack' do
    @single_game = SingleGame.instance
    @weapon = params[:weapon]
    erb(:attack)
  end

  run! if app_file == $0

end
