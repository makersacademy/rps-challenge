require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions
  before do
    @game = Game.access
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player.name
    erb :play
  end

  post '/rock' do
    @game.player.selection = :rock
  end

  post '/paper' do
    @game.player.selection = :paper
  end

  post '/scissors' do
    @game.player.selection = :scissors
  end

  run! if app_file == $PROGRAM_NAME
end
