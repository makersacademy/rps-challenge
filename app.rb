require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['player_one'] = params[:player_one].capitalize
    p session['player_one']
    redirect '/play'
  end

  post '/weapons' do
    session['weapon'] = params[:weapon].downcase
    redirect '/play'
  end

  get '/play' do
    @name = session['player_one']
    @weapon = session[:weapon]
    lose = "Commiserations, #{@name} - you lose..."
    win = "Congratulations, #{@name} - You win!"
    @computer_weapon = ['rock', 'paper', 'scissors'].sample
    if @weapon == @computer_weapon
      @message = "It's a draw"
    elsif @weapon == "rock" && @computer_weapon == "paper"
      @message = lose
    elsif @weapon == "paper" && @computer_weapon == "rock"
      @message = win
    elsif @weapon == "scissors" && @computer_weapon == "paper"
      @message = win
    elsif @weapon == "scissors" && @computer_weapon == "rock"
      @message = lose
    elsif @weapon == "paper" && @computer_weapon == "scissors"
      @message = lose
    elsif @weapon == "rock" && @computer_weapon == "scissors"
      @message = win
    else
      redirect '/attack'
    end

    erb(:play)
  end

  get '/attack' do
    @name = session['player_one']
    erb(:attack)
  end

  get '/reset' do
    session['weapon'] = ""
    session['computer_weapon'] = ""
    redirect '/attack'
  end

end
