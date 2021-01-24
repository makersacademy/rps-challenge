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

  post '/names' do
    Game.create(Game.new(Player.new(params[:name]), CPU.new))
    redirect '/game_page'
  end

  get '/game_page' do
    @name = @game.p1_name
    @score = @game.p1_score
    @cpu_name = @game.p2_name
    @cpu_score = @game.p2_score
    erb(:game_page)
  end

  post '/game_page' do
    @game.p1.choice = params[:pick]
    @game.p2.choice
    redirect '/round_complete'
  end

  get '/round_complete' do
    @winner_name = @game.who_wins.name if @game.who_wins
    @game.win_point
    @name = @game.p1_choice
    @choice = @game.p1_choice
    @score = @game.p1_score
    @cpu_name = @game.p2_name
    @cpu_choice = @game.p2_choice
    @cpu_score = @game.p2_score
    erb(:round_complete)
  end	

  run! if app_file == $0
end
