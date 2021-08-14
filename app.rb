# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'


class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/players' do
    $Player_1 = Game.new(params[:player1])
    redirect '/begin'
  end

  get '/begin' do
    @Player1 = $Player_1.name
    #@Player_1_HP = $Player_1.hp
    #@Player_2 = $Player_2.name
    #@Player_2_HP = $Player_2.hp
    erb :play
  end


  run! if app_file == $0
end


