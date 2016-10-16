require 'sinatra/base'
require 'haml'
require 'rspec'
require './lib/opponent'
require './lib/turn'



class RPS < Sinatra::Base
  use Rack::Session::Cookie,:key => 'rack.session',
                            :path => '/',
                            :secret => 'your_secret'

  get '/' do
    haml :index
  end

  post '/name' do
    session[:player_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    haml :play
  end

  post '/play' do
    session[:player_choice] = params[:choice].downcase.to_sym
    session[:opponent_choice] = Opponent.new.choice
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
