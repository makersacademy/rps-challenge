require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp_player'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    session[:name] = params[:name]
    @game = Game.new
    session[:game] = @game
    @player = Player.new(@name)
    session[:player] = @player
    @comp = Computer.new
    session[:computer] = @comp
    erb :new_game
  end

  get '/choose_shape' do
    @name = session[:name]
    erb :choose_shape
  end

  get '/result' do
    @player_choice = params[:shape]
    session[:shape] = params[:shape]
    session[:player].choose(session[:shape])
    session[:winner] = session[:game].play(session[:player], session[:computer])
    p session[:computer]
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
