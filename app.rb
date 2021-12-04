require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  get '/choose_rock' do
    @player = $player
    @rock = @player.choose_rock
    erb :play
  end

  get '/choose_paper' do
    @player = $player
    @paper = @player.choose_paper
    erb :play
  end

  get '/choose_scissors' do
    @player = $player
    @scissors = @player.choose_scissors
    erb :play
  end

  run! if app_file == $0
end
