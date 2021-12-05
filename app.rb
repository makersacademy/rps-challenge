require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/bot'
require './lib/game'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    $bot = Bot.new
    $game = Game.new($player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/choose_rock' do
    @game = $game
    @rock = $game.player.choose_rock
    @choice = $bot.random_choice
    @winner = $game.winner_with_rock(@choice)
    erb :play
  end

  get '/choose_paper' do
    @game = $game
    @paper = @game.player.choose_paper
    @choice = $bot.random_choice
    @winner = $game.winner_with_paper(@choice)
    erb :play
  end

  get '/choose_scissors' do
    @game = $game
    @scissors = @game.player.choose_scissors
    @choice = $bot.random_choice
    @winner = $game.winner_with_scissors(@choice)
    erb :play
  end

  run! if app_file == $0
end
