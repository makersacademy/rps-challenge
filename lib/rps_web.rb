require "sinatra/base"
require_relative "computer"
require_relative "game"
require_relative "player"

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    session[:name] = params[:name]
    @game = Game.new
    session[:game] = @game
    @player = Player.new(@name)
    session[:player] = @player
    @computer = Computer.new
    session[:computer] = @computer
    erb :new_game
  end

  get '/start_game' do
    @name = session[:name]
    erb :start_game
  end

  get '/outcome' do
    @player_choice = params[:move]
    session[:move] = params[:move]
    session[:player].select(session[:move])
    session[:winner] = session[:game].play(session[:player],session[:computer])
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
