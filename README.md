# RPS Challenge

[Link to original README.md](/original-README.md)

## Getting started

Either visit the live [Heroku-hosted version](https://quiet-wildwood-32600.herokuapp.com/), or `clone` and launch this web app locally:

```sh
git clone git@github.com:dafuloth/rps-challenge.git

bundle

ruby app.rb

```

## Features

### Player registers their name before playing an online game

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

```

The feature test:

```ruby

feature 'Registering names' do
  scenario 'Player name displayed before playing an online game' do
    visit('/')
    fill_in :player_name, with: 'Winston'
    click_button 'Play'
    expect(page).to have_content 'Winston'
  end
end

```

### Player can play *rock, paper, scissors*

```sh

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```
At this point it became clear that it would be a good idea to extract to a test helper the sign-in and clicking Play:

```ruby

def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Winston'
  click_button 'Play'
end

```

These lines in `single_player_spec.rb` are replaced by calling the method `sign_in_and_play`. This method will be used in the gameplay feature tests for the outcomes of Win, Draw, and Loss.

```ruby

feature 'Playing the game' do
  scenario 'Player plays "Paper"' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose "Paper"'
  end  

  scenario 'Player plays "Paper" and wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Your opponent chose "Rock". You win!'
  end

  scenario 'Player plays "Paper" and draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Your opponent chose "Paper" too. It\'s a draw.'
  end

  scenario 'Player plays "Paper" and loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Oh no! Your opponent chose "Scissors". You lose.'
  end  
end

```


## Issues encountered

### Web app only renders correctly in Safari

_a.k.a. why it's often better to manually type a line of code instead of copying and pasting that line from the web_

#### `”` vs. `"`

Look closely at those two characters. I didn't see the difference at first but my browsers weren't so easily fooled.

In the end it was the [W3C Markup Validation Service](https://validator.w3.org) which allowed me to identify and resolve the issue.

I was writing [my CSS stylesheet](/public/css/styles.css) and could not remember how to link to it in my HTML. I looked up the line, copy & pasted the `type=”text/css”` part I was missing.

`<link rel="stylesheet" type=”text/css” href="/css/style.css" />`

It turns out that Safari is more forgiving because it rendered my HTML/CSS perfectly. Chrome and Firefox, not so much.

I even tried uploading my app to Heroku, in case there was something odd happening locally - but same thing. Arguably, it was Safari that rendered incorrectly: my incorrect code should not have resulted in a correct rendering. Firefox and Chrome did their jobs.

## Links

- Some sites I looked at when I was centering an element: [CSS-Tricks](https://css-tricks.com/centering-css-complete-guide/), [Tipue](http://www.tipue.com/blog/center-a-div/)

- Rock, paper, scissors hand images modified from [this image](https://openclipart.org/detail/63805/rock-scissors-paper) from Openclipart contributor _mazeo_
