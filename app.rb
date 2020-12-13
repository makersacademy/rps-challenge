require 'sinatra/base'
require 'player'

class RPS < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_1_name])
    erb :name
  end

  #establish server if file run directly
  run! if app_file == $0
end
