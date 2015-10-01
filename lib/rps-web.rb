require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp_player'

class RPSWeb < Sinatra::Base

  set :public_folder, proc {File.join(root, '..', 'public')}
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions, :static

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    if params[:name] == "" || params[:name] == " "
      erb :new_game
    else
      @name = params[:name]
      session[:name] = params[:name]
      @game = Game.new
      session[:game] = @game
      @player = Player.new(@name)
      session[:player] = @player
      @comp = Computer.new
      session[:computer] = @comp
      redirect '/choose_shape'
    end
  end

  get '/choose_shape' do
    @name = session[:name]
    erb :choose_shape
  end

  get '/result' do
    session[:shape] = params[:shape]
    erb :result
  end

  post '/result' do
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
