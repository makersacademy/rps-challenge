require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base

set :views, proc { File.join(root, '..', 'views') }

enable :sessions


  get '/' do
    erb:index
  end

  post '/' do
  session[:choice] = params[:your_choice]
  redirect('/result')
  end

  get '/result' do
  @choice = session[:choice]
  game = Game.new(@choice)
  @result = game.play
  @computer = game.computer_choice

  erb:result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
