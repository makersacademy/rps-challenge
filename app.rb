require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.loader
  end

  get '/home' do
    erb(:home)
  end

  post '/home' do
    Game.create(Game.new(Player.new(params[:name]), Computer.new))
    redirect '/battle'
  end

  get '/battle' do
    @name, @ai_name = @game.p1_name, @game.p2_name
    erb(:battle)
  end

  post '/battle' do
    @game.player1.choice = params[:pick]
    @game.player2.choose
    redirect '/round_over'
  end

  get '/round_over' do
    @choice, @ai_name, @ai_choice = @game.p1_choice, @game.p2_name, @game.p2_choice
    erb(:round_over)
  end

end
