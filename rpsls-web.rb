require 'sinatra/base'
require './lib/game'
require './lib/computer'
#snake_case and PascalCase
class RPSLSWeb < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, 'views') }

#Home Page
  get '/' do
    erb :home_page
  end
#register player, initialize game & computer
  get '/name' do
    session[:game] = Game.new
    session[:computer] = Computer.new
    erb :name
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/name') if params[:name].empty?
    redirect('/instructions')
  end
#instructions
  get '/instructions' do
    @name = session[:name]
    erb :instructions
  end
#Rock-Paper-Scissors-Lizard-Spock
  get '/throw' do
    erb :throw
  end

  post '/throw' do
    session[:player_shape] = params[:shape]
    session[:computer_shape] = session[:computer].throws(session[:game].shapes)
    redirect('/outcome')
  end

  get '/outcome' do
    @player_shape = session[:player_shape]
    @computer_shape = session[:computer_shape]
    @outcome = session[:game].result(@player_shape, @computer_shape)
    @score = session[:game].score
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == RPSLSWeb
end
