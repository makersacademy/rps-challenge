require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base

  before '/*' do
    @player1, @player2 = Player.get
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Player.set_instance(params["name"])
    Player.set_instance(params["second_name"]) if params["second_name"]
    redirect '/start'
  end

  get '/start' do
    erb(:play)
  end

  post '/choice' do
    @player1.save_choice(params["choice"])
    redirect '/result'
  end

  get '/result' do
    if @player2.nil?
      @game = Game.new(@player, Computer.new)
    else
      @game = Game.new(@player1, @player2)
    end
    @result = @game.result
    erb(:result)
  end

    run! if app_file == $0
end
