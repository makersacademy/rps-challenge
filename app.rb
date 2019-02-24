require 'sinatra/base'
require "./lib/player"
require "./lib/game"
require "./lib/router"

class RockPaperScissors < Sinatra::Base
  set :port, 5678

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/mode' do
    Game.create
    @game = Game.current_game
    @game.mode = params[:mode]
    redirect '/name'
  end

  get '/name' do
    erb :name
  end

  post '/name' do
    @game.player_one = Player.new(params[:name_one])
    @game.player_two = Player.new(params[:name_two])
    redirect "/game"
  end

  get '/game' do
    @game.reset_choices if @game.complete?
    erb :game
  end

  post '/choice' do
    router = Router.new(@game)
    choice = params[:choice].to_sym
    redirect(router.route(choice))
  end

  get '/result' do
    @result = @game.result
    erb :result
  end

  run! if app_file == $0

end
