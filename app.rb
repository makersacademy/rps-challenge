require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class RPS < Sinatra::Base

  before do
      @game = $game
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
    @player_1= Player.new(params[:name])
    @computer= Player.new("the computer")
    $game = Game.new(@player_1, @computer)
    @game = $game
    redirect '/start'
  end

  get '/start' do
    erb(:start)
  end

  post '/start' do
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    @game.player_1.choose(params[:choice])
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb(:confirmation)
  end

  post '/confirmation' do
    @game.player_2.choose
    p @game.player_2.choice
    redirect '/results'
  end

  get '/results' do
    @winner = @game.winner
    erb(:results)
  end

  run! if app_file == $0
end
