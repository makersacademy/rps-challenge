require 'sinatra/base'
require './lib/player'
require './lib/machine'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    @player_1_name = session[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/game_on' do
    @player_1_name = session[:player_1_name]
    session[:rps] = params[:rps]
    @human_object = session[:rps]
    @machine = Machine.new
    @machine_object = @machine.choose_object
    erb :game_on
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
