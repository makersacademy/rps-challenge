module OutcomeFinder
  OUTCOMES = {
    'rock' => {
      'rock' => 'draw',
      'paper' => 'win',
      'scissors' => 'lose'
    },
    'paper' => {
      'rock' => 'lose',
      'paper' => 'draw',
      'scissors' => 'win'
    },
    'scissors' => {
      'rock' => 'win',
      'paper' => 'lose',
      'scissors' => 'draw'
    }
  }
end
