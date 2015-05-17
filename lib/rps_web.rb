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

  post '/newplayer' do
    @name = params[:name]
  end

  get '/newgame' do
    erb :newgame
  end

  post '/newgame' do
    @name = params[:name]
    erb :newgame
  end

  get '/game' do
    @name
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
      @winner = @name
    elsif @choice == "Paper" && @computerchoice == "Rock"
      @winner = @name
    elsif @choice == "Scissors" && @computerchoice == "Paper"
      @winner = @name
    elsif @choice == @computerchoice
      @winner = "Nobody"
    else
      @winner = "Computer"
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
