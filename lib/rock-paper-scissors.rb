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
    erb :outcome

  end

  run! if app_file == $0

end
