require 'sinatra/base'
require 'player'
# require 'game'
# require 'attack'

class Battle < Sinatra::Base

enable :sessions

  #
  # before do
  #   @game = Game.instance
  # end

  get '/' do
     erb :index
  end
#
#   post '/names' do
#    player_1 = Player.new(params[:player_1_name])
#    player_2 = Player.new(params[:player_2_name])
#    @game = Game.create(player_1, player_2)
#    redirect '/play'
#   end
#
#   get '/play' do
#     @game = Game.instance
#     erb :play
#   end
#
#   post '/attack' do
#     Attack.use(@game.current_opponent)
#
#     if @game.game_over?
#       redirect '/game-over'
#     else
#       redirect '/attack'
#     end
#   end
#
#   get '/attack' do
#     erb :attack
#   end
#
#   post '/switch-turns' do
#     @game.switch_turns
#     redirect('/play')
#   end
#
#   get '/game-over' do
#     erb :game_over
#   end
#
#   # start the server if ruby file executed directly
#   run! if app_file == $0
# end
#
