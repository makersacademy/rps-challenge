require "sinatra/base"
require "pry"
require_relative "computer"
require_relative "game"
require_relative "player"

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/register_player' do
    erb :register_player
  end

  post '/new_game' do
    @name = params[:name]
    session[:name] = params[:name]
    session[:game] = Game.new
    session[:player] = Player.new(@name)
    session[:computer] = Computer.new
    erb :new_game
  end

  post '/start_game' do
    @name = session[:name]
    erb :start_game
  end

  get '/outcome' do
    @player_choice = params[:move]
    session[:player].picks(@player_choice)
    @winner = session[:game].play(session[:player],session[:computer])
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
