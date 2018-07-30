require 'sinatra/base'
require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/bot.rb'
require_relative './lib/game.rb'

# WE NEED TO GET RID OF THE GLOBAL VARIABLE AFTER THIS

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect ('/play')
  end

  get '/play' do
    @player_name = $player.name
    erb(:play)
  end

  get '/results' do
    @player_choice = params[:choice].capitalize
    @bot_choice = Bot.new.choice
    @result = Game.new(@player_choice, @bot_choice).result
    erb(:results)
  end

  # start the server when 'ruby app.rb' is executed in terminal
  run! if app_file == $0

end
