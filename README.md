# RPS Challenge

## To run the app:

```
$ git clone git@github.com:l3w15x/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

The app is then running on http://localhost:9292/

From there it's pretty self explanatory!

[![Screen_Shot_2018-04-17_at_07.31.57.png](https://s31.postimg.cc/5q6m3kyh7/Screen_Shot_2018-04-17_at_07.31.57.png)](https://postimg.cc/image/u6ory1z7r/)

[![Screen_Shot_2018-04-17_at_07.33.29.png](https://s31.postimg.cc/uw7kafumj/Screen_Shot_2018-04-17_at_07.33.29.png)](https://postimg.cc/image/lofbtqnk7/)

This was an interesting challenge and mostly building the app was OK. I ran into some issues with Capybara, but got there in the end. Given more time I would like to extract the win lose functionality to make this a little more DRY and easier to read. The CSS also needs tweaking for larger display screens.

Tests are my only other concern with this app. I have 100% coverage through feature tests only, and using feature tests was very useful in building the app. Whilst I do feel my approach has been test driven, I'd still like to feel that everything was test-driven and to have some robust unit testing.
