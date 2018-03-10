require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  set :sessions, true

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
