require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  run! if app_file == $0
end