require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/bot'
require './lib/winner'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    $winner = Winner.new($player)
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  get '/choose_rock' do
    @player = $player
    @winner = $winner
    @rock = @player.choose_rock
    @choice = Bot.new.random_choice
    @winner = @winner.with_rock(@choice)
    erb :play
  end

  get '/choose_paper' do
    @player = $player
    @winner = $winner
    @paper = @player.choose_paper
    @choice = Bot.new.random_choice
    @winner = @winner.with_paper(@choice)
    erb :play
  end

  get '/choose_scissors' do
    @player = $player
    @winner = $winner
    @scissors = @player.choose_scissors
    @choice = Bot.new.random_choice
    @winner = @winner.with_scissors(@choice)
    erb :play
  end

  run! if app_file == $0
end
