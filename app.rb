require 'sinatra/base'
require './lib/rock_paper_scissors'
require './lib/randomiser'

class Game < Sinatra::Base

  post '/result' do
    @name = params[:name]
    @game = RockPaperScissors.new(params[:weapon_choice])
    erb :result
  end

  get '/' do
    erb :pick_option
  end
end
