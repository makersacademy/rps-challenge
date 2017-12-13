require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/cpu'

class RPS < Sinatra::Base
  before do
    @player = Player.access
    @game = Game.access
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.create(Player.access, Cpu.new)
    @current_player = @game.player.name
    erb :play
  end

  post '/rock' do
    @game.player.selection = :rock
    redirect '/result'
  end

  post '/paper' do
    @game.player.selection = :paper
    redirect '/result'
  end

  post '/scissors' do
    @game.player.selection = :scissors
    redirect '/result'
  end

  get '/result' do
    @current_player = @game.player
    @cpu = @game.cpu
    @result = @game.result_message(@current_player.name)
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
