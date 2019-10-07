require 'sinatra/base'
require './lib/cpu.rb'
require './lib/game.rb'
require './lib/human.rb'
require './lib/config.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :modeselector
  end

  post '/mode' do
    mode = params["Modeselector"]
    players = params["Playselector"]
    @config = Config.create(mode, players)
    redirect '/names'
  end

  before do
    @config = Config.instance

    def two_player?
      @config.players == "2"
    end

  end

  get '/names' do
    erb :names
  end

  post '/players' do
    player_1 = Human.new(params["player_1_name"])
    if two_player?
      player_2 = Human.new(params["player_2_name"])
    else
      player_2 = Cpu.new(@config)
    end
    @game = Game.create(player_1, player_2, @config)
    redirect 'play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  get '/play2' do
    erb :play2
  end

  post '/store' do
    @game.player_1.store(params[:player_1_choice])
    if two_player?
      redirect '/play2'
    else
      redirect '/result'
    end
  end

  post '/store2' do
    @game.player_2.store(params[:player_2_choice])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
