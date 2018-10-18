require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/' do
    $player_1 = Player.new(params[:name_1])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    $player_1.choose_weapon(params[:weapon])
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  run! if app_file == $0
end
