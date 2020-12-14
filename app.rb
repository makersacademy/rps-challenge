require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game.randomiser
    if @game.comp_move == 0
      erb(:draw)
    elsif @game.comp_move == 1
      erb(:lose)
    else
      erb(:win)
    end
  end

  post '/paper' do
    @game.randomiser
    if @game.comp_move == 0
      erb(:win)
    elsif @game.comp_move == 1
      erb(:draw)
    else
      erb(:lose)
    end
  end

  post '/scissors' do
    @game.randomiser
    if @game.comp_move == 0
      erb(:lose)
    elsif @game.comp_move == 1
      erb(:win)
    else
      erb(:draw)
    end
  end
  
  run! if app_file == $0
end
