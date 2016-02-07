require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  #def initialize
  #  @game = Game.new
  #end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    if !params[:choice].nil?
      #result = @game.play(params[:choice])
      computer = ['rock', 'paper', 'scissors'].sample
      choice = params[:choice]
      if choice == 'rock'
        result = 'tied' if computer == 'rock'
        result = 'lost' if computer == 'paper'
        result = 'won' if computer == 'scissors'
      elsif choice == 'paper'
        result = 'tied' if computer == 'paper'
        result = 'lost' if computer == 'scissors'
        result = 'won' if computer == 'rock'
      else
        result = 'tied' if computer == 'scissors'
        result = 'lost' if computer == 'rock'
        result = 'won' if computer == 'paper'
      end
      session[:result] = "The result is .... You #{result}"
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end