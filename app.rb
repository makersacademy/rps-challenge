require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.generate(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  run! if app_file == $0
end
