require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base

  get '/' do
    erb :enter_name
  end

  post '/present_choices' do
    @player = params[:player_name]
    erb :present_choices
  end

end
