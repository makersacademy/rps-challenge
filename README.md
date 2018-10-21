# Rock Paper Scissors Lizard Spock Game WebApp

A game project for Makers.
Original instructions are [here](../blob/master/Instruction_README.md).


## Approach

1. I created [mockups](../blob/master/mockups/) for the pages and designed the flow of the game.
2. Using the TDD approach, I followed the feature tests and unit tests to implement the model, view and controller. I tried to follow the princple of single responsibilty and other design princples during this process.
3. I refactored during the implementation. After I was done with code I simplified the views and the controller.

### Extras
- Lizard, Spock choices
- ChoiceReader - read the choices from a JSON file ( rock, paper, scissors, lizard, spock). In my app it is automatically get created, and loaded in the game.
- RulesFactory - read a JSON file with the rules. Also automatically get called in my app.
- I would like to make the multiplayer version later on, and beautify my views.

## Run

1. Run bundle.
``` bash
bundle
```

2. Run rack with the configuration file.
``` bash
rackup config.ru
```

3. Check the port in the terminal window, like `port=9292`.

4. Open your browser, and navigate to your localhost with the port.

```browser
localhost:9292
```

5. Play the game!

