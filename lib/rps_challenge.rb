require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/name_set' do
    erb :enter_name
  end

  get '/play' do
    @name = params[:name]
    erb :hello
  end

  get '/start_game' do
    $game = Game.new Player
    erb :start_game
  end

  post '/start_game' do
    $hand_selection = params[:hand_selection]
    erb :start_game
  end

  get '/game' do
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
