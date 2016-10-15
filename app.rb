require 'sinatra/base'

class Battle < Sinatra::Base

  if ENV['RACK_ENV'] == 'test'
    disable :show_exceptions
  end

  before '/' do
    Game.create
  end

  before do
    @game = Game.game
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game.set_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choose' do
    @game.play(params[:choice])
    redirect '/play'
  end

  run! if app_file == $0
end
