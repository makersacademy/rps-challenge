# Process

This is a file I will use to document my work step by step, to later be
translated in a README.

## First User Story

```As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

I built an infrastructure test and created a homepage with a form, prompting
the user to enter their name.

## Second User Story

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

I built a dropdown menu where the user can submit which move
(rock/paper/scissors) they choose to play.

After submitting their move, the user is directed to the /play page.
At this point, the page simply returns what move the user entered.

###### Ideas

- a 'play again' link returning the user to the /names page

###### Difficulties

- need to talk to a coach about MVC, moving methods into ruby classes
- need to talk to a coach about testing doubles in capybara
