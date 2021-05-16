require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

class Game < Sinatra::Base
  enable :sessions 

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:name])
  end

  get '/play' do
    @name = $player.name
    erb :play
  end

  get '/rock' do
    @name = $player.name
    erb :rock
  end

  get '/paper' do
    @name = $player.name
    erb :rock
  end

  get '/scissors' do
    @name = $player.name
    erb :scissors
  end

  run! if app_file == $0
end