# RPS Challenge

## My mini-review  

### what do you think you did well
I am happy with the overall (though basic) implementation and I think the tests I wrote are accurate - appropriate use of doubles & stubs. I tried hard to stick to SOLID principles and I think the code is relatively DRY - I am not totally confident with the overall design though and this is where some feedback would be appreciated.

### what do you think was hard or confusing
As I had only learnt about MVC apps a few days previous, using it to build the app was a challenge. Setting up the environment, for example, required constant checking of documentation to make sure I was on the right path.

I also found using Capybara to feature test and then RSpec to Unit test is a workflow that takes time to get used to, but I feel this is mainly because Capybara is new framework.

I also had not encountered (knowingly) class methods so getting my head around them and implementing them was a challenge.

### what would you like feedback on?

The overall design and how well they stick to the SOLID principles. Also how well I have implemented the use of a MVC app - if the relationship between each area is correct.

### what would you work on if you had more time?
I would have tried to refactor the result method into something a little simpler if possible and potentially move it into the Weapon class as it involves deciding the winning weapon.

I would have also liked to have added a human two player implementation - I think my current design makes it relatively easy to achieve this.

I would have also added some CSS to make it more user friendly.

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
