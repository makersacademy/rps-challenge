require 'sinatra/base'
require_relative 'game'
require_relative 'player'
class RpsWeb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @player = params[:name]
    session[:name] = @player
    erb :name
  end

  get '/game' do
    @player = session[:name]
    $player_1 = Player.new "#{@player}"
    $player_2 = Player.new "AI"
    $game = Game.new $player_1, $player_2
    erb :game
  end


  post '/game' do
    @choice = params[:selection]
    @p1select = $player_1.pick @choice
    @p2select = $player_2.pick($game.computer_choice)
    @result = $game.check_winner(@p1select, @p2select)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
