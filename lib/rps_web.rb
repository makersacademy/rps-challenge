require 'sinatra/base'
require 'sinatra/partial'
require './lib/rockpaperscissors'
require './lib/player'
require './lib/computer'



class Rps < Sinatra::Base
  register Sinatra::Partial
  set :views, proc { File.join(root, "../", 'views') }
  set :partial_template_engine, :erb
  enable :sessions


  get '/' do
    redirect '/name'
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/name'
  end

  get '/new_game' do
    @name = session[:name]
    redirect '/name' if @name=="" || @name.nil?
    session[:game] = Rockpaperscissors.new
    session[:player1] = Player.new
    session[:player1].name=@name
    session[:player2] = Computer.new
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :new_game
  end

  get '/play' do
    erb :game
  end

  post '/play' do
    move = params[:move]
    session[:player1].public_send(move.to_sym)
    redirect '/winner'
  end

  get '/winner' do
    @p1name = session[:player1].name
    @p2name = session[:player2].name
    @p1move = session[:player1].choice
    @p2move = session[:player2].choice
    @winner = session[:game].winner(@p1name, @p1move, @p2name, @p2move)
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
