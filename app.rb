require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    user = Player.new(params[:player_name])
    @game = Game.create(user)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.play_round(params[:choice])
    redirect('/round-end')
  end

  get '/round-end' do
    erb(:round_end)
  end

  run! if app_file == $0
end