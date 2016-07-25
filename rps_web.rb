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
    @game = Game.create
    erb :options
  end

  get '/play' do
    @player = Player.name
    @option = Game.option(params[:choice])
    @game = Game.instance
    erb :results
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
