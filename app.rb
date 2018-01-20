require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/how_to' do
    erb(:how_to)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]))
    redirect to 'play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0

end
