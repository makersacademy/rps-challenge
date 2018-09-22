#This is my server file meaning this is my controller.
require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPSWeb < Sinatra::Application

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    # player_1 = Player.new(params[:player_1_name])
    # player_2 = Computer.new
    @game = Game.create(Player.new(params[:player_1_name]), Computer.new)
    #$player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player_1
    erb(:play)
  end

  post '/result' do
    @game.player_1.weapon = @game.player_choice(params[:choices]) #this is user's choice
    redirect '/result'
  end

  get '/result' do
    @player_1_name = @game.player_1.name
    @player_1_choice = @game.player_1.weapon
    @player_2_choice = @game.player_2.weapon
    erb(:result)
  end


  run! if app_file == $0
end
  # get '/result' do
  #   @game = Game.new
  #   erb @game.result
  # end


# # start the server if ruby file executed directly
#
# end
