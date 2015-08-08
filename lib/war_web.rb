require 'sinatra/base'
require_relative 'war.rb'

class WarWeb < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  enable :sessions

  get '/' do
    erb :homepage
  end

  get '/weapon' do
    @number_of_weapons = params[:type]
    session[:type] = @number_of_weapons
    @visitor = params[:name]
    session[:name] = @visitor
    @opponent = params[:opponent]
    session[:opponent] = @opponent
    erb :weapon
  end

  get '/result' do
    $war = War.new
    @number_of_weapons = session[:type]
    $war.weapons_available(@number_of_weapons)
    @visitor = session[:name]
    @opponent = session[:opponent]
    @user_weapon = params[:weapon]
    session[:user_weapon] = @user_weapon
    @computer_weapon_of_5 = %w[rock paper scissors lizard spock].sample
    @computer_weapon_of_3 = %w[rock paper scissors].sample
    @result_of_5_game = $war.decide_winner(@user_weapon, @computer_weapon_of_5)
    @result_of_3_game = $war.decide_winner(@user_weapon, @computer_weapon_of_3)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
