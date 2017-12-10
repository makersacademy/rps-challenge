require 'sinatra/base'
require './lib/computer_selection.rb'
require './lib/result.rb'

class RPS < Sinatra::Base

  enable :sessions


  get '/' do
    'Welcome to Rock Paper Scissors'
    erb(:index)
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/result' do

    @player_name = session[:player_name]

    if params[:rock]
      session[:player_selection] = 'Rock'
    elsif params[:paper]
      session[:player_selection] = 'Paper'
    elsif params[:scissors]
      session[:player_selection] = 'Scissors'
    end

    @player_selection = session[:player_selection]
    redirect '/result'

  end

  get '/result' do
    @computer_selection = ComputerSelection.new.computer_selection
    @player_selection = session[:player_selection]
    @player_name = session[:player_name]

    if @player_selection == @computer_selection
      @result = 'Draw'
    elsif (@player_selection == "Rock" && @computer_selection == "Scissors")
      @result = "#{@player_name} wins"
    elsif @player_selection == "Paper" && @computer_selection == "Rock"
      @result = "#{@player_name} wins"
    elsif @player_selection == "Scissors" && @computer_selection == "Paper"
      @result = "#{@player_name} wins"
    elsif @player_selection == "Rock" && @computer_selection == "Paper"
      @result = "Computer wins"
    elsif @player_selection == "Paper" && @computer_selection == "Scissors"
      @result = "Computuer wins"
    elsif @player_selection == "Scissors" && @computer_selection == "Rock"
      @result = "Computuer wins"
    end



    erb(:result)
  end

  run! if app_file == $0
end
