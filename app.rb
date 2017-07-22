require 'sinatra/base'
require './lib/player'
require './lib/computer_player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  helpers do
    def event_message(player, choice)
      "#{player.name} chooses #{choice.to_s.capitalize}!" if choice
    end
  end

  get '/' do
    erb :index
  end

  before do
    @human_player = session[:human_player]
    @computer_player = session[:computer_player]
  end

  post '/name' do
    session[:human_player] = Player.new(params[:player_name])
    session[:computer_player] = ComputerPlayer.new('Superhans')
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @human_choice = session[:human_choice]
    @computer_choice = session[:computer_choice]
    @human = @human_player
    @computer = @computer_player
    erb :play
  end

  post '/confirm' do
    session[:human_choice] = event_message(@human_player, params[:choice])
    session[:computer_choice] = event_message(@computer_player, @computer_player.choose)
    redirect '/play'
  end

end
