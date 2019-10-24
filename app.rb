require 'sinatra/base'
require 'pony'
require './lib/game'
require './lib/player'
require './lib/move'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure do

   Pony.options = {
     :via => :smtp,
     :via_options => {
       :address => 'smtp.sendgrid.net',
       :port => '587',
       :domain => 'myapp.com',
       :user_name => ENV['SENDGRID_USERNAME'],
       :password => ENV['SENDGRID_PASSWORD'],
       :authentication => :plain,
       :enable_starttls_auto => true
     }
   }
 end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    move = Move.new
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1, move)
    Email.send_greeting_email
    redirect '/play'
  end

  get '/play' do

    erb :play
  end

  post '/move' do
    @game.move.player_move(params.values[0])
    @game.move.computer_move

    redirect '/game'
  end

  get '/game' do
    erb @game.outcome
  end

  run! if app_file == $0
end
