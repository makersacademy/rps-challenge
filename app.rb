require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class Rsp < Sinatra::Base

  enable :sessions

  before do
    @game = Game.now
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new( params[:player] )
    @game = Game.init( player, Computer.new )
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.player.choose("rock")
    redirect '/result'
  end

  post '/paper' do
    @game.player.choose("paper")
    redirect '/result'
  end

  post '/scissors' do
    @game.player.choose("scissors")
    redirect '/result'
  end

  get '/result' do
    result = @game.check_result( @game.player.choice )
    erb result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
