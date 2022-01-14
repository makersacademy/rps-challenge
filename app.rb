require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect('/outcome')
  end

  get '/outcome' do
    @choice = session[:choice]
    @computer_move = Computer.new.move
    @game = Game.new(player: @choice, computer: @computer_move)
    erb(:result)
  end

  run! if app_file == $0
end
