require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Computer.new("The Machine")
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/options' do
    @game = Game.instance
    option_1 = params[:chosen_option]
    option_2 = @game.computer_option
    session[:option_1] = option_1
    session[:option_2] = option_2
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @option_1 = session[:option_1]
    @option_2 = session[:option_2]
    @result = @game.result(@option_1, @option_2)
    erb :result
  end

  get '/end' do
    erb :end
  end

  run! if app_file == $0
end
