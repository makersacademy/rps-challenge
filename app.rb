require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game' do
    @name = params[:name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


#<%= stylesheet_link_tag "main" %>
