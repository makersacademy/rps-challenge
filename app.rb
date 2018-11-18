require 'sinatra/base'

class RPSWEB < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/choice' do
		$name = params[:name]
		$weapon = params[:choice]
		redirect '/result'
	end

	get '/result' do
		@name = $name
		@weapon = $weapon
		erb(:result)
	end
end