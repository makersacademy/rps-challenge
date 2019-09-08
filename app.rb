require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @player = Player.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = @player.name
    erb(:play)
  end

  post '/choice' do
    @player.store_choice(params[:choice])
    @choice = @player.choice
    @player_name = @player.name
    erb(:choice)
  end 

  post '/result' do
    @player_name = @player.name
    @choice = @player.choice
    erb(:result)
  end

  run! if app_file == $0
end
