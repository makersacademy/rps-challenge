require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    # @player = Player.create(params[:name])
    # session[:player] = Player.new(params[:name])
    session[:game] = Game.new(Player.new(params[:name]))
    # p @player.name
    erb :play
  end

  post '/result' do
    @choice = params[:choice].downcase
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
