require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'

class Rps < Sinatra::Base

  get '/' do
  erb(:index)
  end

  post '/name' do
  @player = Player.create(params[:name])
  redirect '/play'
  end

  get '/play' do
  @player = Player.instance
  @name = @player.name
  erb(:game)
  end

  post '/choice' do
  @player = Player.instance
  @player.randomchoice
  @player.choose(params[:choice])
  @player = Player.create(@player.name, @player.choice, @player.computer_choice)
  redirect '/final'
  end

  get '/final' do
  @player = Player.instance
  @result = @player.game_result
  @computer_choice = @player.computer_choice
  erb(:final)
  end

  run! if app_file == $0
end
