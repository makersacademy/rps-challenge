require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPSApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:game)
  end

  post '/result' do
    p params
    @player = Player.new(params[:player], params[:rps])
    @cpu = Computer.new('cpu')
    @game = Game.new(@player, @cpu)
    @game.run_game
    @result = @game.result
    erb(:game)
  end

  run! if app_file == $0
end