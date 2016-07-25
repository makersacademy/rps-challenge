require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello RockPaperScissors!'
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:name])
    redirect '/start'
  end

  get '/start' do
    @player = Player.instance
    erb :name
  end

  get '/rps' do
    @game = Game.create
    erb :options
  end

  get '/play' do
    @choice = params[:choice]
    @game = Game.instance
    @option = @game.option(@choice)
    @result = @game.win_lose_draw(@choice.to_sym)
    erb @game.result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
