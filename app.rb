require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

# class Game 
#   def result
#     :win
#   end 
# end

class RockPaperScissors < Sinatra::Base
    enable :sessions

    configure :development do
      register Sinatra::Reloader
    end

    configure do
      enable :sessions
    end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:marketer_name_1] = params[:marketer_name_1]
    redirect '/play'
  end

  get '/play' do
    @marketer_name_1 = session[:marketer_name_1]
    erb :play
  end

  post '/choice' do
    @game = Game.new
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = params[:computer_choice]
    redirect '/result'
  end

 get '/result' do
    @game = Game.new
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @win_logic = params[:win_logic]
    erb :result
  end

# start the server if ruby file executed directly
  run! if app_file == $0

end