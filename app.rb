require './lib/player'
require './lib/game'
require './lib/comp'
require 'sinatra'


class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    comp_player = Comp.new
    @@game = Game.new(player1, comp_player)
    redirect to ('/play')
  end

  get '/play' do
    @p1 = @@game.player[0]
    erb :play
  end

get '/rock' do
  @p1 = @@game.player[0]
  @c2 = @@game.player[1]
  compvalue = @c2.comp_choice
  @result = @@game.evaluate(0, compvalue)
  erb :rock
end

get '/spock' do
  erb :spock
end

get '/paper' do
  @p1 = @@game.player[0]
  @c2 = @@game.player[1]
  compvalue = @c2.comp_choice
  @result = @@game.evaluate(0, compvalue)
  erb :paper
end

get '/lizard' do
  erb :lizard
end

get '/scissors' do
  @p1 = @@game.player[0]
  @c2 = @@game.player[1]
  compvalue = @c2.comp_choice
  @result = @@game.evaluate(0, compvalue)
  erb :scissors
end

  run! if app_file == $0
end
