require "sinatra"
get "/" do
  "Hello World"
end
get "/secret" do
  "this is a secret"
end
