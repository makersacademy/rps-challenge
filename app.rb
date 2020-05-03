# in app.rb
require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    erb(:index)
  end

  post '/name' do
     $player1 = Player.new(params[:player1_name])
     $player2 = Player.new(params[:player2_name])
    redirect('/play')
  end

  get '/play' do
   @player1_name=$player1.name
   @player2_name=$player2.name
    erb(:play)
  end

  get '/attack' do
    $player1.status = params[:button]
    erb(:attack)
  end

end
