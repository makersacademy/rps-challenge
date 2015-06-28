require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/start' do
    $game = Game.new Player
    if params[:single] == 'on'
      $game.player_1.opponent.name = "Computer"
      $game.player_1.opponent.choice = Game::OPTIONS.sample
    end
    erb :start
  end

  post '/start' do
    @user = params[:name]
    if @user and @user.strip != ''

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
    @opponent_name = $game.player_1.opponent.name
    @opponent_choice = $game.player_1.opponent.choice
    @result = $game.won_lost_or_tied $game.player_1
    erb :outcome
  end

  run! if app_file == $0

end
