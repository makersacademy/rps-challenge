require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/user.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:mode)
  end

  post '/mode' do
    if params[:game_mode] == "singleplayer"
      redirect '/index'
    else
      redirect '/multi'
    end
  end

  get '/multi' do
    erb(:multi)
  end

  get '/index' do
    erb(:index)
  end

  post '/singlename' do
    user = User.new(params[:username])
    computer = Computer.new
    @game = Game.create(user, computer)
    redirect '/play'
  end

  post '/multinames' do
    user = User.new(params[:username])
    player2 = User.new(params[:player2])
    @game = Game.create(user, player2)
    redirect '/multiplay'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/multiplay' do
    erb(:multiplay)
  end

  post '/results' do
    @game.who_won(params[:hand])
    redirect '/winner'
  end

  post '/multiresults' do
    @game.multi_who_won(params[:hand], params[:second])
    redirect '/winner'
  end

  get '/winner' do
    @game.winner
    erb(:winner)
  end


  run! if app_file == $0
end