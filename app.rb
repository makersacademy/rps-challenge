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
     $computer = Computer.new
    redirect('/play')
  end

  get '/play' do
   @computer_status = $computer.rps
   @player1_name = $player1.name
   @player1_status = $player1.status
    erb(:play)
  end

  post '/play' do
    $player1.status = params[:button]
    redirect('play')
  end

end
