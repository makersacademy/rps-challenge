require 'sinatra/base'
require_relative 'war.rb'

class WarWeb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    session[:name] ? @visitor = session[:name] : @visitor = nil
    $player_count = 0
    erb :homepage
  end

  get '/weapon' do
    $player_count += 1
    @opponent = params[:opponent]
    session[:opponent] = @opponent
    if @opponent == "the computer"
      @your_number = 1
    else
      $player_count == 1 ? @your_number = 1 : @your_number = 2
    end
    params[:name] == "" ? params[:name] = "anon#{rand(1000000)}" : params[:name]
    session[:name] ? @visitor = session[:name] : @visitor = params[:name]
  ## unless session[:name] do
  ##    session[:name] = params[:name]
  ##  end

  ##  @visitor = session[:name]

    @number_of_weapons = params[:type]
    session[:type] = @number_of_weapons
    session[:name] = @visitor
    # @opponent = params[:opponent]
    # session[:opponent] = @opponent
    session[:player_number] = @your_number
    erb :weapon
  end

  # unless $war
  #   $war = War.new
  #   session[:player_id] = 1
  # else
  #   session[:player_id] = 2
  # end

  get '/result' do
    $war ? $war : $war = War.new
    @number_of_weapons = session[:type]
    $war.weapons_available(@number_of_weapons)
    @your_number = session[:player_number]
    @visitor = session[:name]
    @opponent = session[:opponent]
    @user_weapon = params[:weapon]
    session[:user_weapon] = @user_weapon
    @computer_weapon_of_5 = %w[rock paper scissors lizard spock].sample
    @computer_weapon_of_3 = %w[rock paper scissors].sample
    @result_of_5_game = $war.decide_winner(@user_weapon, @computer_weapon_of_5)
    @result_of_3_game = $war.decide_winner(@user_weapon, @computer_weapon_of_3)
    @your_number == 1 ? $player_1_weapon = @user_weapon : $player_2_weapon = @user_weapon
    @result_human_game = $war.decide_winner($player_1_weapon, $player_2_weapon)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
