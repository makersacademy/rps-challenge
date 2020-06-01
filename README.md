Nikita's 'Rock Paper Scissors' Challenge
========================================

# What is the RPS Challenge?

The RPS Challenge app allows a user to play 'Rock Paper Scissors' in a browser of their choice. The user can enter their name, choose one of the three options from a dropdown
menu, and then see the result.

I built this app in May 2020 in response to the Makers Academy [RPS Challenge](https://github.com/NikitaDouglas/rps-challenge/blob/master/CHALLENGE.md).

# How to play RPS?

You can play RPS in a browser of your choice. Follow the steps below:

1. Clone the app using the green **Clone or Download** button above.
2. Install bundler (take a look [here](https://bundler.io/) if you don't know how to do that)
and then run `bundle install` to install the dependencies.
3. In the app's root directory, run `rackup -p 4567` on the command line to start the server.
4. Visit http://localhost:4567 in your browser  to play the game.

The tests were created with RSpec and Capybara. Run `rspec` on the command line when you're in the root directory to run the tests.

# How I built RPS Challenge

I began this challenge by creating an HTTP request/response diagram - you can see it [here](https://github.com/NikitaDouglas/rps-challenge/blob/master/Screenshot%202020-05-30%20at%2011.41.32.png). As you can see from the diagram, I used the PRG pattern to redirect
the client after submitting information with a POST request. The app is built using Sinatra, a light weight web app framework for Ruby.

I wrote the initial tests in Capybara, ensuring that I had set up my server correctly, and I also created the `app_helper.rb` file in order to 'DRY' my tests. I
used strict TDD for this process, but in hindsight I don't think I sufficiently broke down my tests - there are only two in `app_spec.rb`. I haven't quite got the grasp of what I'm supposed to be testing for with Capybara - I feel that feature tests on web apps require a more nuanced understanding of 'behaviour not state' than I currently possess. I built
the `app.rb` file using Sinatra's modular framework.

I then moved on to writing the game proper, test-driving its functionality with pure RSpec. I feel that here, I failed to commit and push as often as would have been beneficial, and my commit history is a bit threadbare.

Finally, I 'joined-up' my game with the app, requiring the `rps_game.rb` file in `app.rb`, creating a new instance of the game when the client (redirected from `/choice` path) makes a GET request for `/rps_winner`.

I ran out of time to create a 'Play again?' button, but I know that I would approach this by using the PRG pattern once again to redirect the user back to the `/choice` path.

# Things to think about going forwards...

- Using CSS. I am, admittedly, unenthused by the prospect of decorating, as plain old HTML is fine for me (I feel like I'm drifting towards becoming a back-end dev). In future though, I'd like to use some CSS to centre my text and colour the background. It will also be useful to learn the best file structure for dividing HTML files from stylesheets.
- Multi-player? It seemed rather extraneous - I could code it, but why would two people use the same computer to play a hand-game they could play in person?
- File overview in the README - things are getting rather complex now. Time to announce some order to this chaos. 
