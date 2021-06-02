require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do 
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1].capitalize))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    session[:choice] = params[:choice]
    session[:result] = @game.take_turn(@game.player, session[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0
  
end
