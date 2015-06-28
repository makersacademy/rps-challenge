require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/start' do
    erb :start
  end

  post '/start' do
    @user = params[:name]
    if @user and @user.strip != ''
      $game = Game.new Player
      $game.player_1.name = @user
      @options = Game::OPTIONS
      erb :choice
    else
      redirect '/start'
    end
  end

  post '/outcome' do
    @username = $game.player_1.name
    @choice = params.key('on')
    $game.player_1.choice = @choice
    $game.player_1.opponent.name = "Computer"
    @opponent_name = $game.player_1.opponent.name
    $game.player_2.choice = Game::OPTIONS.sample
    @opponent_choice = $game.player_1.opponent.choice
    @result = $game.won_lost_or_tied $game.player_1
    erb :outcome
  end

  run! if app_file == $0

end
