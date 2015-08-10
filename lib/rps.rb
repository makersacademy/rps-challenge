require 'sinatra/base'
require_relative 'game'
require_relative 'computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/game' do
    @visitor = params[:playername]
    redirect to('/') unless (@visitor != "" || @visitor == nil) # is this acceptable, or should it be in the erb?
    erb :game
  end

  post '/game' do
    @visitor = params[:playername]
    @my_move = params[:option]
    @computer_move = Computer.new.move
    @result = Game.new.result(@my_move, @computer_move)
    p params
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, '..', 'views') }
end
