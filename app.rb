require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_form, layout: :layout
  end

  post '/enter-name' do
    session[:player_name] = params['name']
    redirect to '/game'
  end

  get '/game' do
    @name = session[:player_name]
    @message = session.delete(:message)
    @computer_choice = session.delete(:computer_choice)
    erb :game, layout: :layout
  end

  post '/move' do
    session[:message] = params['move']
    session[:computer_choice] = 'Rock'
    redirect to '/game'
  end
end
