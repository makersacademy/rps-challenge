require 'sinatra'

get '/' do
  'Welcome to Rock Paper Scissors!'
end

get '/secret' do
  'This is the secret test!'
end
