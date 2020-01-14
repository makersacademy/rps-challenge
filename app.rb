require 'sinatra/base'
class RPS < Sinatra::Base
  enable :sessions
  # def initialize(comp, player_1)
  #   @pc = comp
  #   @player_1_name = player_1
  # end
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  get '/rock' do
    @player_1_name = session[:player_1_name]

    erb :rock
  end
  get '/paper' do
    @player_1_name = session[:player_1_name]
    erb :paper
  end
  get '/scissors' do
    @player_1_name = session[:player_1_name]
    erb :scissors
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
