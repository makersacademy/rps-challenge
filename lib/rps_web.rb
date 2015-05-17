require 'sinatra/base'

class RockPaperScissorsWeb < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :homepage
  end

  get '/newplayer' do
    erb :newplayer
  end

  get '/game/new' do
    erb :newgame
  end

  post '/game/new' do
    @name = params[:name]
    erb :newgame
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    @choice = params[:choice]
    @computerchoice = ["Rock", "Paper", "Scissors"].sample
    self.winner
    erb :game
  end

  def winner
    if @choice == "Rock" && @computerchoice == "Scissors"
      @winner = "You! Congratulations!"
    elsif @choice == "Paper" && @computerchoice == "Rock"
      @winner = "You! Congratulations!"
    elsif @choice == "Scissors" && @computerchoice == "Paper"
      @winner = "You! Congratulations!"
    elsif @choice == @computerchoice
      @winner = "Nobody"
    else
      @winner = "Computer"
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end