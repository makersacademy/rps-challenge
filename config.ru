require_relative "./app"
run RPS
map "/public" do
  run Rack::Directory.new("./public")
end