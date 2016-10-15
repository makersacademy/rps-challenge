require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0

end
