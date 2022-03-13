require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
   end
   
   get '/play' do
     @player_name = $game.player.name
     erb(:play)
   end

   post '/outcome' do
    $player_answer = params[:player_answer]
    redirect 'outcome'
  end

  get '/outcome' do
    @player_answer = $player_answer
    @cpu_answer = $game.cpu_answer
    @outcome_announcement = $game.winner(@player_answer,@cpu_answer)
    erb(:outcome)
  end

  run! if app_file == $0

end