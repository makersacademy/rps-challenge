require 'sinatra/base'
require_relative 'game'

class RPSchallenge < Sinatra::Base
  
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/game' do
    @name = params[:name]
    session[:name] = @name
    redirect '/' if @name == ""
    game = Game.new
    @player_option = params[:moves]
    @computer_option = game.play
    if @player_option == @computer_option
      @outcome = 'Draw!'
    else
      @outcome = game.winner @player_option, @computer_option, @name
    end
    erb :new_game
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
