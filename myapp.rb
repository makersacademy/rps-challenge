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

  post '/select' do
    p params
    p @game.p1choice(params[:weapon])
    p @game.ai_choice
    # erb(:select)
    if @game.outcome == "You win" then redirect '/win'
    elsif @game.outcome == "You lose" then redirect '/lose'
    elsif @game.outcome == "It's a draw!" then redirect '/draw'
    end
  end

  get '/draw' do
    erb(:draw)
  end

  get '/win' do
    erb(:win)
  end

  get '/lose' do
    erb(:lose)
  end

  run! if app_file == $0

end
