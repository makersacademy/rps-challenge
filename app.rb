require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:Player1])
    @player2 = Player.new('RosiePoSie')
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

end
