require './lib/player'
require './lib/game'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    trump = Trump.new
    @game = Game.create(player, trump)
    redirect '/choose'
  end

  get '/choose' do
    @game = Game.instance
    erb :choose
  end

  post '/outcome' do
    erb :outcome
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
