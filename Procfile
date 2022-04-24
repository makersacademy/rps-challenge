web: bundle exec rackup -p $PORT config.ru

let port = process.env.PORT;
if (port == null || port == "") {
  port = 8000;
}
app.listen(port);