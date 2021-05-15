require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'

class App < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  post '/name' do
    @game = Game.create(Player.new(params[:name]))
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @option = session[:option]
    @result = @game.declare_winner(@option)
    erb(:result)
  end


  post '/select' do
    # refactor to store player_option in game.player_option
    # @game.player_1.choose_option(v)
    # @game.player_2.choose_option(v)
    # @game.declare_winner(@game.player_1.option, @game.player_2.option)
    params.each_value { |v| session[:option] = v } 
    redirect('/result') 
  end
 
  run! if app_file == $0
end