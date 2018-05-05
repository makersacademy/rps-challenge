require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/ai.rb'
require_relative './lib/fight.rb'

class RockPaper < Sinatra::Base
  before do
    @fight = Fight.instance
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/setup' do
    Fight.game_start(Player.new(params[:player1]), Ai.new)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/load' do
    @fight.player1.decision = params[:action]
    erb(:load)
  end

  get '/result' do
    @fight.player2.play_turn
    @winner = @fight.battle(@fight.player1, @fight.player2)
    erb(:result)
  end
end
