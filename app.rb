require 'sinatra/base'

class Fight < Sinatra::Base

	get '/test' do 
		"Test infrastructure working!"
	end

  get '/' do
  	erb :index
  end





end