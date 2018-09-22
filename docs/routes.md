# Routes

## `/` (`:get`)

Main index page. Asks the player for their name. Posts to `name`

## `/name` (`:post`)

Processes player 1's name and redirects to `play`

## `/play` (`:get`)

Handles selection of rock, paper or scissors and submits choice. Posts choice to `choice`

## `/choice` (`:post`)

Processes player 1's choice and redirects to `round` if the game is not over, or redirects to `win-lose` if the game is over.

## `/round` (`:get`)

Shows the outcome of the round. Whether player 1 or the computer won and what their choices were. Updates the winning player's score. AIncludes a link to play the next round that redirects to `play`

## `/win-lose` (`:get`)

Shows the overall winner. Includes a link to start a new game. This will reset the scores and redirect to `play`
