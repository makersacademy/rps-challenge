require 'sinatra/base'
require "./lib/player"
require "./lib/game"
require 'pry'

class RockPaperScissors < Sinatra::Base
  set :port, 5678
  enable :sessions

  before do
    @game = Game.current_game
    @mode = session[:mode]
  end

  get '/' do
    erb :index
  end

  get '/name' do
    session[:mode] = params[:mode]
    @mode = session[:mode]
    erb :name
  end

  post '/name' do
    player_one = Player.new(params[:name_one])
    player_two = Player.new(params[:name_two])
    Game.create(player_one, player_two)
    redirect "/game"
  end

  get '/game' do
    @game.reset_choices if @game.complete?
    erb :game
  end

  post '/choice' do
    if @game.player_one.has_chosen?
      @game.player_two.choose(params[:choice])
    else
      @game.player_one.choose(params[:choice])
      redirect "/game" if @mode == "Multiplayer"
      @game.player_two.choose_random
    end
    redirect "/result"
  end

  get '/result' do
    @result = @game.result
    erb :result
  end

  run! if app_file == $0

end
