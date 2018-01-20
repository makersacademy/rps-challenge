require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    session[:weapon] = params[:weapon]
    redirect('/outcome')
  end

  get '/outcome' do
    @weapon = session[:weapon]
    computer = Computer.new
    @computer_weapon = computer.choose_weapon
    erb(:outcome)
  end

  run! if app_file == $0
end
