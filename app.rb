# in app.rb
require './lib/Player'
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
    $player1 = Player.new(params[:player1])
    redirect '/begin'
  end

  get '/begin' do
    @Player1 = $player1.name
    erb :play
  end

  run! if app_file == $0
end


