require 'sinatra/base'
require 'player'
require 'computer'
require 'game'


class RPS < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :register
  end

  post '/new_game' do
    if params[:name].empty?
      @message = "Please enter your name"
      erb :register
    else
      player = Player.new(params[:name])
      @welcome = "Welcome #{params[:name]}"
      erb :choose
    end
  end

  get '/choose' do
    game = Game.new
    erb :choose
  end



# start the server if ruby file executed directly
run! if app_file == $0
end
