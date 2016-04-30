require 'sinatra/base'
require './lib/select'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:name]
    @game = Select.create
    redirect '/play'
  end

  before do
    @game = Select.object
  end

  get '/play' do
    @player = session[:player]
    @game
    erb :play
  end

  get '/game' do
    @player = session[:player]
    @game
    erb :game
  end

  post '/rock' do
    @player = session[:player]
    @game
    @game.rock
    redirect '/game'
  end

  post '/paper' do
    @player = session[:player]
    @game
    @game.paper
    redirect '/game'
  end

  post '/scissors' do
    @player = session[:player]
    @game
    @game.scissors
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
