require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:form)
  end

  post '/name' do
    @player_name = params[:player_name]
    p params
    erb(:name)
  end

  post '/game' do
    @player_pick = params[:button]
    pick = Game.new
    @computer_pick = pick.computer_pick
    
    @result = pick.decision(@player_pick, @computer_pick)
    
    erb(:game)
  end


  run! if app_file == $0
end
