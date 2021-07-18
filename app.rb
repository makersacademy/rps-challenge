require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/npc'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/selection' do
    session[:player].choose(params[:selection])
    redirect '/results'
  end

  get '/results' do
    @player = session[:player]
    @npc = Npc.new
    @result = Result.new(@player, @npc)
    erb(:results)
  end

  run! if app_file == $0
end
