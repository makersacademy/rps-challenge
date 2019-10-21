require 'sinatra'

get '/' do
  erb(:index)
end

post '/name' do
  p params

  @name = params[:name]
  p @name
  erb(:playername)

end
