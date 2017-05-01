# RPS Challenge

Now you can play Rock, Paper, Scissors on your very own local server!

## Installation

1. Clone the repository: `git clone git@github.com:adc17/takeaway-challenge.git`
2. Install dependencies: `cd path/to/dir` then `bundle install`. 

## Usage

1. Start a local server: `rackup -p 4567`, then navigate to `localhost:4567`.
2. Enter your name and start playing.

## Tests

To test, navigate to the project root and run `rspec`.

## Challenges

1. Programming the RPS rules: I resorted to a nasty if/else tree. I tried to implement a simpler solution using an array and `sort`, but was unsuccessful. In the end, I couldn't find a better solution than the obvious undesirable one.
2. Capybara testing: I don't feel clear on how thorough my feature tests should be, or on how they should be organised. I'm also unclear on how to check pages have content that is not a string, e.g. an image or a button.
3. Two-player functionality. I had a go at this in a separate branch (see the [hacky-2p-solution](https://github.com/adc17/rps-challenge/tree/hacky_2p_solution) branch, but it ended up being, well, hacky—there was duplication everywhere and so I didn't include it in my final version.

## Strengths

Hard to come by this weekend—I was unhappy with my work—but I did manage to remain disciplined about testing first. 

## Other notes

Created as my third weekend challenge during the [Makers Academy](http://www.makersacademy.com) Bootcamp.
