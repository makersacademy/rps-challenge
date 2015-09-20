require 'sinatra/base'
require 'sinatra/partial'
require './lib/rockpaperscissors'



class Rps < Sinatra::Base
  register Sinatra::Partial
  set :views, proc { File.join(root, "../", 'views') }
  set :partial_template_engine, :erb
  enable :sessions


  get '/' do
    erb :index
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/name'
  end

  get '/play' do
    erb :game#start new game, play moves
  end

  post '/play' do
    session[:game] = Rockpaperscissors.new
    session[:player_move] = params[:move]
    session[:computer_move] = session[:game].computer_choice
    session[:winner] = session[:game].winner(session[:player_move], session[:computer_move])
    redirect '/winner'
  end

  get '/winner' do
    @winner = session[:winner]
    @player = session[:player_move]
    @computer = session[:computer_move]
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
