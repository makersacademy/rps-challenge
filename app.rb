require 'sinatra/base'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb :play
  end
  
end


# def result
#   RULES[player_choice][computer.choice()] ? :win : :lose
# end

# get '/play' do
#   @game.player1_choice = params[:choice]
#   erb @game.result
# end