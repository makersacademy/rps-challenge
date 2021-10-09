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
    @game 
    erb :play
  end

  get '/attack' do
    @p1_weapon = params[:player_1_choice]
    @p2_weapon = @game.player_2.weapon_select
    
    if @p1_weapon == @p2_weapon.to_s
      @result = "tied with the opponent" 
    else
      @result = @game.result(@p1_weapon, @p2_weapon)
    end

    erb :attack
  end



  run! if app_file == $0
end