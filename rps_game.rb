require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @choice = session[:choice]
    @computer_choice = session[:computer_choice]
    @game = Game.new(session[:choice], session[:computer_choice])
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:shape]
    session[:computer_choice] = Computer.new.play_hand
    redirect '/play'
  end

run! if app_file == $0

end
