require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    session[:move] = params[:move]
    @computer = Computer.create
    redirect '/result'
  end

  get '/result' do
    @computer = Computer.instance
    @move = session[:move]
    erb(:result)
  end

  run! if app_file == $0
end
