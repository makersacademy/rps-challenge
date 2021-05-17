require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    @game = $game
    @game.player.save_move(params[:move])
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    erb(:outcome)
  end

  run! if app_file == $0
end
