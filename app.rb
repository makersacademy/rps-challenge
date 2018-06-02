require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/player'
  end

  get '/player' do
    @player = $player.name
    erb(:player)
  end

  get '/rock' do
    @player = $player.name
    erb(:rock)
  end

  run! if app_file == $0
end
