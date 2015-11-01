require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    game = Game.new
    game.set_player_name(params[:player_name])
    session[:game] = game
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @player_choice = game.player_choice
    @player_name = game.player_name
    @winner = game.calculate_winner
    @computer_choice = game.set_computer_choice
    erb :play
  end

  get '/choice' do
    game = session[:game]
    game.set_player_choice = params[:player_choice]
    session[:game] = game
    redirect '/play'
  end

  run! if app_file == $0

  # def choice
  #   num = Kernel.rand
  #   num < 0.333 ? :rock : ( num < 0.666 ? :paper : :scissors )
  # end
  #
  # def winner
  #   return nil if (@player_choice.nil? || @computer_choice.nil?)
  #   choices = [:rock, :paper, :scissors]
  #   index = choices.index(@player_choice.to_sym)
  #   choices[index-1] == @computer_choice.to_sym ? @player_name : :Computer
  # end

end
