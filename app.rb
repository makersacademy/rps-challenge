require 'sinatra/base'
require './lib/rps'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  before do
    @game = RPS.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = RPS.create(player)
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
