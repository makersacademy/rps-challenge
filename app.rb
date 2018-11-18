require 'sinatra/base'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  enable :static
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    # player = Player.new(params[:player_1_name])
    # @game = Game.create(player, enemy)
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name].upcase
    erb :play
  end

  get '/rock' do
    redirect '/play'
  end

  get '/paper' do
    redirect '/play'
  end

  get '/scissors' do
    redirect '/play'
  end

  get '/lizard' do
    redirect '/play'
  end

  get '/spock' do
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
