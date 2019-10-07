require 'sinatra/base'
require './model/model.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @name1 = params[:player_1]
    erb :play
  end

  post '/winner' do
    @comp_selection = Comp.new.comp_selection
    @player_selection = player_selection
    comp = @comp_selection.to_sym
    player = @player_selection.to_sym
    @result = Rules::RULES[player][comp]
    erb :winner
  end

  private
  def player_selection
    if
      params[:rock] != nil
      @choice = params[:rock]
    elsif
      params[:paper] != nil
      @choice = params[:paper]
    elsif
      params[:scissors] != nil
      @choice = params[:scissors]
     end
     @choice
   end
  run! if app_file == $0
end
