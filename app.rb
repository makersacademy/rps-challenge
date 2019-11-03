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
    @outcome = compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  get '/paper' do
    @player_weapon = "Paper"
    random_weapon
    @outcome = compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  get '/scissors' do
    @player_weapon = "Scissors"
    random_weapon
    @outcome = compare_weapons(@player_weapon, @computer_weapon)
    erb :outcome
  end

  def random_weapon
    @computer_weapon = ["Rock", "Paper", "Scissors"].sample
  end

  def compare_weapons(player_weapon, computer_weapon)
    return "It's a tie." if player_weapon == computer_weapon
    return "You win." if player_weapon == "Scissors" && computer_weapon == "Paper"
    return "You win." if player_weapon < computer_weapon

    "I win."
  end

  run! if app_file == $0
end
