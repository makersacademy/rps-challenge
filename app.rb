require 'sinatra'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

before do
  @game = Game.instance
end

get '/' do
  erb(:join)
end

post '/new' do
  @player_1 = Player.new(params[:player_1_name])
  @player_2 = Player.new(params[:player_2_name], !!params[:is_computer])
  Game.create(@player_1, @player_2)
  redirect '/play'
end

get '/play' do
  @game = Game.instance
  erb(:play)
end

post '/turn_over' do
  @game = Game.instance
  @game.chosen_move = params[:move].to_sym
  @game.get_move
  if @game.player_2.is_computer
    @game.switch_turns
    @game.get_move
  else
    @game.switch_turns
  end
  redirect '/play'
end