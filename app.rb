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
    player = Player.new(params[:player1])
    one = Ai.new
    two = Player.new(params[:player2])
    mode = params[:mode] == "2"
    mode ? Fight.game_start(player, two) : Fight.game_start(player, one)
    page = mode ? '/play2' : '/play'
    redirect(page)
  end

  get '/play' do
    erb(:play)
  end

  get '/play2' do
    erb(:play2)
  end

  get '/play3' do
    @fight.player1.decision = params[:action]
    erb(:play3)
  end

  get '/load' do
    @fight.player1.decision = params[:action]
    erb(:load)
  end

  get '/load2' do
    @fight.player2.decision = params[:action]
    erb(:load)
  end

  get '/result' do
    @fight.player2.play_turn if @fight.computer? 
    @winner = @fight.battle(@fight.player1, @fight.player2)
    erb(:result)
  end
end
