require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
     erb(:index)
   end

  post '/names' do
    $player = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/choice' do
    $choice = params[:player_choice]
    redirect to('/result')
  end

  get '/result' do
    @player = $player
    @choice = $choice
    erb(:result)
  end

   run! if app_file == $0
end
