class Logic

  STD = {
    ['rock', 'paper'] => 2,
    ['rock', 'scissors'] => 1,
    ['paper', 'rock'] => 1,
    ['paper', 'scissors'] => 2,
    ['scissors', 'paper'] => 1,
    ['scissors', 'rock'] => 2,
  }

  SPOCK = {
    ['rock', 'paper'] => 2,
    ['rock', 'scissors'] => 1,
    ['rock', 'lizard'] => 1,
    ['rock', 'spock'] => 2,
    ['paper', 'rock'] => 1,
    ['paper', 'scissors'] => 2,
    ['paper', 'lizard'] => 2,
    ['paper', 'spock'] => 1,
    ['scissors', 'paper'] => 1,
    ['scissors', 'rock'] => 2,
    ['scissors', 'lizard'] => 1,
    ['scissors', 'spock'] => 2,
    ['spock', 'rock'] => 1,
    ['spock', 'paper'] => 2,
    ['spock', 'scissors'] => 1,
    ['spock', 'lizard'] => 2,
    ['lizard', 'paper'] => 1,
    ['lizard', 'rock'] => 2,
    ['lizard', 'scissors'] => 2,
    ['lizard', 'spock'] => 1,
  }
end
