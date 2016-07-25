require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello RockPaperScissors!'
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player])
    redirect '/start'
  end

  get '/start' do
    @player = Player.instance
    erb :name
  end

  get '/rps' do
    @game = Game.create(params[:choice])
    erb :options
  end

  post '/play' do
    @option = Game.option
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
