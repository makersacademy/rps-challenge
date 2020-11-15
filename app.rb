require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    session[:computer] = Computer.new
    session[:game] = Game.new(session[:player_1], session[:computer])
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    @player_1 = session[:player_1].name
    erb(:play)
  end

  post '/choose' do
    @game = session[:game]
    redirect('/outcome')
  end

  get '/outcome' do
    @game = session[:game]
    erb(:outcome)
  end

  run! if app_file == $0
end
