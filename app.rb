require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/weapons'
  end

  get '/weapons' do
    erb :weapons
  end

  post '/choices' do
    $player.set_weapon(params[:rock] || params[:paper] || params[:scissors])
    redirect '/battle'
  end

  get '/battle' do
    @player_weapon = session[:player_weapon]
    @computer_weapon = ['ROCK','PAPER','SCISSORS'].sample
    erb :battle
  end

  run! if app_file == $0
end
