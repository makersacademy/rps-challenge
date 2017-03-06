# $VERBOSE=nil
# ENV['RACK_ENV'] = 'test'
# require 'rack/test'
require 'sinatra/base'

class Game < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/savename' do
    session['playername'] = params[:playername]
    redirect '/play'
  end

  # before do
  #   @confirmation = params[:confirmation]
  # end

  get '/play' do
    @playername = session['playername']
    @confirmation = session['confirmation'] || "#{@playername} is selecting..."
    @print_comp_choice = session['print_comp_choice'] || ""
    @result = session['result'] || ""
    erb(:play)
  end

  # post '/choice' do
  #   session['confirmation'] = params[:confirmation]
  #   redirect '/play'
  # end

  post '/rock' do
    rock
    redirect '/play'
  end

  post '/paper' do
    paper
    redirect '/play'
  end

  post '/scissors' do
    scissors
    redirect '/play'
  end

  def rock
    random
    case
    when @comp_choice == "paper" then lose
    when @comp_choice == "rock" then draw
    when @comp_choice == "scissors" then win
    end
    session['confirmation'] = "#{session[:playername]} selected rock."
  end

  def paper
    random
    case
    when @comp_choice == "paper" then draw
    when @comp_choice == "rock" then win
    when @comp_choice == "scissors" then lose
    end
    session['confirmation'] = "#{session[:playername]} selected paper."
  end

  def scissors
    random
    case
    when @comp_choice == "paper" then win
    when @comp_choice == "rock" then lose
    when @comp_choice == "scissors" then draw
    end
    session['confirmation'] = "#{session[:playername]} selected scissors."
    #random_method
    #if rock, etc.
    #@confirmation =
  end

  def random
    @arr = ['rock', 'paper', 'scissors']
    @comp_choice = @arr.sample
    session['print_comp_choice'] = "Computer chose #{@comp_choice}."
  end

  def lose
    session['result'] = "You lose."
  end

  def draw
    session['result'] = "Draw."
  end

  def win
    session['result'] = "You win."
  end

run! if app_file == $0 #maybe move

end
