require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  before { @game = Game.instance }

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = params[:player_1_name]
    player_2 = params[:player_2_name]
    Game.create(Player.new(player_1),Player.new(player_2 = :The_Computer))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/game' do
    erb(:game)
  end

  get '/rock' do
    @happened = @game.player_1_move(:rock)
    erb(:game)
  end

  get '/paper' do
    @happened = @game.player_1_move(:paper)
    erb(:game)
  end

  get '/scissors' do
    @happened = @game.player_1_move(:scissors)
    erb(:game)
  end

  post '/reset' do
    @game.reset_score
    redirect('/play')
  end

  post '/new_game' do
    @game.reset_score
    redirect('/')
  end

  run! if app_file == $0
end
