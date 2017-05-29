require 'sinatra/base'
require './lib/computer'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post'/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/battle_ground' do
    @attack_method = params[:attack_method]
    @computer_attack = Computer.new.computer_attack
    erb :battle_ground
  end

  run! if app_file == $0

end
