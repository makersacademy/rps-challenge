require 'sinatra/base'
require './lib/computer_selection.rb'
require './lib/result.rb'
require 'pry'

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
    the_result = Result.new(@player_selection, @computer_selection)
    the_result.calc_result
    @result = the_result.result


    erb(:result)
  end

  run! if app_file == $0
end
