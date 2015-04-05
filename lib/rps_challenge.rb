require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
	set :public_folder, Proc.new { File.join(root, "public") }
	set :views, Proc.new {File.join(root, "..", "views") }
  
  get '/' do
    erb :index
  end

  get '/register' do
  	@name = params[:name]
  	erb :register
  end

  get '/game' do
  	erb :game
  end

  get '/outcome' do
  	erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

# enable :sessions
#   game = Game.new
#   player = Player.new

#   get '/' do
#     erb :index
#   end

#   get '/player' do
#     @name = params[:name]
#     erb :player
#   end

#   post '/player' do
#     @name = params[:name]
#     session[:player] = player
#     erb :game
#   end

#   get '/game' do
#     @name = params[:name]
#     session[:player] = player
#     erb :game
#   end

#   post '/game' do
#     @name = params[:name]
#     session[:player] = player
#     erb :result
#   end

#   post '/result' do
#     player = session[:player]
#     @name = params[:name]
#     @computer = game.random
#     @player = player.choice(params[:game])
#     @result = game.result(@player, @computer)
#     erb :result
#   end