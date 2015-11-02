require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

    get '/' do
      erb(:register)
    end

    post '/names' do
      session[:player_name] = params[:player_name]
    redirect '/play'
    end

    get '/play' do
      @player = Player.new(session[:player_name])
      @computer = Computer.new
      @player_selection = @player.choose(params[:selection])
      @computer_selection = @computer.choose
      @game = Game.new
      @result = @game.battle(@player.weapon, @computer.weapon)
      erb(:play)
    end

  run! if app_file == $PROGRAM_NAME
end
