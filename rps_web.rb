require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
class Rock_Paper_Scissors < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }

# Stage 1 - Signing up

  get '/' do
    erb :index
  end

  post '/sign-up' do
    session[:name] = params[:name]
    redirect '/new-game'
  end

  get '/new-game' do
    session[:player_choice] = params[:player_choice]
    erb :new_game
  end

  get '/start-game' do

  
  end

  post '/computer' do
    @computer = Computer.new
    session[:computer_choice] = @computer.choose
    redirect '/game'
  end

  get '/game' do
    @player = Player.new(session[:name])

  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
