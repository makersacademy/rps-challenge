require 'sinatra/base'
require 'haml'
require 'rspec'

class RPS < Sinatra::Base
  use Rack::Session::Cookie,:key => 'rack.session',
                            :path => '/',
                            :secret => 'your_secret'

  get '/' do
    haml :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @choice = session[:choice]
    @opponent_choice = session[:opponent_choice]
    haml :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:opponent_choice] = Opponent.new.choice
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
