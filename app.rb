require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/names' do
    session['name'] = params['player_name']
    redirect '/play'
  end

  get '/play' do
    @name = session['name']
    erb :play
  end

  get '/rock' do 
    computer_choice = random_move
    @name = session['name']

    if computer_choice == 'rock'
      @result = "It's a draw!"
    elsif computer_choice == 'paper'
      @result = "You loose!"
    elsif computer_choice == 'scissors'
      @result = "You win!"
    end    
    
    erb :play 
  end

  get '/paper' do
    computer_choice = random_move
    @name = session['name']

    if computer_choice == 'paper'
      @result = "It's a draw!"
    elsif computer_choice == 'scissors'
      @result = "You loose!"
    elsif computer_choice == 'rock'
      @result = "You win!"
    end    
    
    erb :play 
  end
  
  get '/scissors' do
    computer_choice = random_move
    @name = session['name']

    if computer_choice == 'scissors'
      @result = "It's a draw!"
    elsif computer_choice == 'rock'
      @result = "You loose!"
    elsif computer_choice == 'paper'
      @result = "You win!"
    end    
    
    erb :play 
  end

  def random_move 
    choice = ['rock', 'paper', 'scissors']
    choice.sample
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
