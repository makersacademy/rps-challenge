$VERBOSE=nil
require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create((Player.new(params[:player_1])), Computer.new)
    redirect '/rules'
  end

  get '/rules' do
    @game = Game.instance
    erb(:rules)
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
