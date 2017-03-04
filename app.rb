require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:name])
    @game = Game.create_game(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/option' do
    p params
    session[:option] = params[:option]
    redirect '/choice'
  end

  get '/choice' do
    @option = session[:option]
    erb :choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
