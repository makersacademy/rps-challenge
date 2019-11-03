require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/choose'
  end

  get '/choose' do
    @player_name = session[:player_name]
    erb :choose
  end

  get '/rock' do
    @player_weapon = "Rock"
    random_weapon
    compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  get '/paper' do
    @player_weapon = "Paper"
    random_weapon
    compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  get '/scissors' do
    @player_weapon = "Scissors"
    random_weapon
    compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  def random_weapon
    @computer_weapon = ["Rock", "Paper", "Scissors"].sample
  end

  def compare_weapons(player_weapon, computer_weapon)

    if player_weapon == computer_weapon
      @outcome = "It's a tie." 
      return
    end

    if player_weapon == "Scissors" && computer_weapon == "Paper"
      @outcome = "You win."
    elsif player_weapon < computer_weapon
      @outcome = "You win."
    else
      @outcome = "I win."
    end

  end

  run! if app_file == $0
end
