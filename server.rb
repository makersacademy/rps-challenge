require 'sinatra/base'
require_relative './app/lib/player'
require_relative './app/lib/element'
require_relative './app/lib/ai'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  rock = Element.rock
  paper = Element.paper
  scissors = Element.scissors
  cpu = Ai.new('CPU')
    
  get '/' do
    erb :index
  end

  post '/' do
    @user_name = params[:name]
    @player = Player.new(@user_name)
    session[:player] = @player
    puts @player.inspect
    erb :index
  end

  get '/game' do
    erb :game
  end

  post '/game' do # This function is a huge mess of code, still have to work on it
    @player = session[:player]
    session[:cpu] = cpu
    cpu.add_element(rock, paper, scissors)
    element_chosen = params[:element]
    
    if element_chosen == 'rock'
      element = rock
    elsif element_chosen == 'paper'
      element = paper
    else
      element = scissors
    end 

    player_move = @player.select_element(element)
    cpu_move = cpu.random_selection
    player_move.confront(cpu_move)
    outcome = @player.win?
    @cpu_selection = cpu.element_selected.name
    @player_selection = @player.element_selected.name
    
    if outcome == true
      @win = 'You win!'
      erb :game
    elsif outcome == false
      @lose = 'You lose!'
      erb :game
    else 
      @tie = 'Tie!'
      erb :game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
