require 'sinatra/base'
require 'sinatra/reloader'

require './lib/player'
require './lib/game'
require './lib/computer'


class BookmarkManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new('RPS Computer')
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    @p1_weapon = params[:player_1_choice]
    @p2_weapon = @game.player_2.weapon_select
    @result = @game.result(@p1_weapon, @p2_weapon)

    erb @result

  end



  run! if app_file == $0
end