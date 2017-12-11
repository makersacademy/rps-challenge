require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/choice.rb'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:main_menu)
  end

  get '/p1_name_entry' do
    erb(:p1_name_entry)
  end

  post '/p1_weapon_select' do
    @current_game = Game.create(params[:Challenger])
    erb(:p1_weapon_select)
  end

  post '/fight_ralph' do
    @current_game = Game.instance
    @current_game.p1.choose(params[:weapon])
    @result = @current_game.fight_ralph
    erb(:fight_ralph)
  end

  # Multiplayer pages

  get '/multiplayer_name_entry' do
    erb(:multiplayer_name_entry)
  end

  post '/multiplayer_weapon_p1' do
    @current_game = Game.create(params[:Player1], params[:Player2])
    erb(:multiplayer_weapon_p1)
  end

  before do
    @current_game = Game.instance
  end

  post '/multiplayer_weapon_p2' do
    @current_game.p1.choose(params[:weapon])
    erb(:multiplayer_weapon_p2)
  end

  post '/multiplayer_fight' do
    @current_game.p2.choose(params[:weapon])
    erb(:multiplayer_fight)
  end
end
