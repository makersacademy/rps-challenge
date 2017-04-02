require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect('/player_choice')
  end

  get '/player_choice' do
    @player = $player
    erb(:player_choice)
  end

  get '/computer_choice' do
    @player = $player
    erb(:computer_choice)
  end

  get '/are_you_sure' do

  end

end
