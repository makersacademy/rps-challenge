require 'sinatra/base'

class Game < Sinatra::Base

  post '/result' do
    #@date = Birthday.new(params[:Day], params[:Month])
    #@name = params[:Name]
    @name = params[:Name]
    @weapon = params[:Weapon_choice]
    erb :result
  end

  get '/' do
    erb :pick_option
  end

end
