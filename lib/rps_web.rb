require 'sinatra/base'
require './lib/rps_game.rb'

class RpsApp < Sinatra::Base

  set :views, proc {File.join(root,'..','views')}

  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  post '/played' do
    @player_selection = params[:selections]
    new_game = RockPaperScissors.new @player_selection
    @opponents_selection = new_game.opponents_selection
    @result = new_game.result
    erb :played
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
