require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPS < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  before { @game = Game.load_game }

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect('/play')
  end

  get '/play' do
    Game.new_game(Game.new)
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    if @game.draw?(session[:choice]) 
      redirect('/draw')
    else
      @game.win?(session[:choice]) ? redirect('/win') : redirect('/loss')
    end
  end

  get '/draw' do
    @choice = session[:choice]
    erb :draw
  end

  get '/win' do
    @choice = session[:choice]
    erb :win
  end

  get '/loss' do
    @choice = session[:choice]
    erb :loss
  end

  run! if app_file == $0
end
