require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/cpu.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.loader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Game.new(Player.new(params[:name]), CPU.new))
    redirect '/game_page'
  end

  get '/game_page' do
    @name = @game.p1_name
    @cpu_name = @game.p2_name
    erb(:game_page)
  end

  post '/game_page' do
    @game.player1.choice = params[:pick]
    redirect '/round_complete'
  end

  get '/round_complete' do
    @game.player2.choose
    @choice = @game.p1_choice 
    @cpu_name = @game.p2_name
    @cpu_choice = @game.p2_choice
  end	

  run! if app_file == $0
end
