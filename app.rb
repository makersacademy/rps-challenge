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
    erb(:index, :layout => :layout)
  end
  
  post '/name' do
    @game = Game.create(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @game.declare_winner(@game.player_1.option)
    erb(:result)
  end


  post '/select' do
    # @game.declare_winner(@game.player_1.option, @game.player_2.option)
    params.each_value { |v| @game.current_turn.choose_option(v) } 
    if @game.current_turn == @game.player_2
      redirect('/result') 
    else 
      @game.next_turn
      redirect('/play')
    end
  end
 
  run! if app_file == $0
end