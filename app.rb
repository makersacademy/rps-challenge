require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

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

  post '/results' do
    @game.clear_winner
    @game.calculate(params[:choice])
    redirect to '/final' if @game.finished?
    redirect to '/processing'
  end

  get '/processing' do
    if @game.winner == @game.player
      redirect to 'win'
    elsif @game.winner == @game.computer
      redirect to 'lose'
    else
      redirect to 'draw'
    end
  end

  get '/final' do
    @game.player.wins > @game.computer.wins ? erb(:winner) : erb(:loser)
  end

  get '/win' do
    erb(:win)
  end

  get '/lose' do
    erb(:lose)
  end

  get '/draw' do
    erb(:draw)
  end

  run! if app_file == $0

end
