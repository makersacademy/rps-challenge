require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect to('/play'), 303
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    puts "+=+=+=+++++==="
    puts @game
    puts '+++++======'
    erb(:play)
  end

  run! if app_file == $0

end
