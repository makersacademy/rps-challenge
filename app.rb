require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base

  before '/*' do
    @player = Player.get
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Player.set_instance(params["name"])
    redirect '/start'
  end

  get '/start' do
    erb(:play)
  end

  post '/choice' do
    @player.save_choice(params["choice"])
    redirect '/result'
  end

  get '/result' do
    @game = Game.new(@player, Computer.new)
    @result = @game.result
    erb(:result)
  end

    run! if app_file == $0
end
