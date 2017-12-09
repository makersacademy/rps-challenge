require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/choice.rb'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:menu)
  end

  post '/names' do
    @current_game = Game.create(params[:Challenger])
    erb(:play)
  end

  before do
    @current_game = Game.instance
  end

  post '/fight_ralph' do
    @current_game.P1.choose(params[:weapon])
    @result = @current_game.fight_ralph
    erb(:fight_ralph)
  end
end
