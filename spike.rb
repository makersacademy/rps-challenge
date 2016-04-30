require 'sinatra'
# require './lib/player'
# require './lib/computer'


get '/' do
  'hello!'
end

# class RPS < Sinatra::Base
#   get '/' do
#     erb :index
#   end

#   post '/names' do
#     player_1 = Player.new(params[:player_1_name])
#     computer.create(player_1)
#     redirect '/play'
#   end
#     before do
#       @game = Game.game_in_play
#     end
#   get '/play' do
#    erb :play
  # end

  # get '/attack' do
  #   @game.attack(@game.opponent_of(@game.current_player))
  #   erb :attack
  # end
  # post '/switch-turns'do
  #   redirect '/game-over' if @game.game_over?
  #   @game.switch_turn
  #   redirect ('/play')
  # end
  #   get '/game-over' do
  #   erb :game_over
  # end
  # run! if app_file == $0
# end
