require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/start' do
    @user = params[:name]
    if @user and @user.strip != ''
      $game = Game.new Player
      $game.player_1.name = @user
      erb :choice
    else
      erb :start
    end
  end

  run! if app_file == $0

end
