require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/game.rb'
require './lib/player.rb'

class Rpssl < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @single_player = Player.instance
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  post '/singleplayer/name' do
    @single_player = Player.create(params[:Player1])
    redirect '/singleplayer/move'
  end

  get '/singleplayer/move' do
    erb(:singleplayer_move)
  end

  post '/singleplayer/rock' do
    computer_player = Player.new("SuperComputer 5000")
    @game = Game.create(@single_player, "Rock", computer_player)
    redirect '/singleplayer/result'
  end

  post '/singleplayer/scissors' do
    computer_player = Player.new("SuperComputer 5000")
    @game = Game.create(@single_player, "Scissors", computer_player)
    redirect '/singleplayer/result'
  end

  post '/singleplayer/paper' do
    computer_player = Player.new("SuperComputer 5000")
    @game = Game.create(@single_player, "Paper", computer_player)
    redirect '/singleplayer/result'
  end

  post '/singleplayer/spock' do
    computer_player = Player.new("SuperComputer 5000")
    @game = Game.create(@single_player, "Spock", computer_player)
    redirect '/singleplayer/result'
  end

  post '/singleplayer/lizard' do
    computer_player = Player.new("SuperComputer 5000")
    @game = Game.create(@single_player, "Lizard", computer_player)
    redirect '/singleplayer/result'
  end

  get '/singleplayer/result' do
    erb(:result)
  end

  run! if app_file == $0
end
