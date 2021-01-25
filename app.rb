require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $name = Game.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @name = $name.name
    @option = session[:option]
    @computer_option = session[:computer_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:computer_option] = [:Rock, :Paper, :Scissor].sample
    redirect '/play'
  end

  run! if app_file == $0
end
