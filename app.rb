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
    erb(:index)
  end

  post '/names' do
    user = User.new(params[:username])
    computer = Computer.new
    @game = Game.create(user, computer)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/results' do

  end

  get '/results' do
    erb(:results)
  end


  run! if app_file == $0
end