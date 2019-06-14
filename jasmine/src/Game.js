function Game() {
  this.start = 'Rock, Paper or Scissors?';
}

Game.prototype.gameStart = function() {
  return this.start;
};

Game.prototype.outcome = function() {
  var playerTurn = player.turn
  console.log(playerTurn)
  var computerTurn = computer.makeTurn();
  console.log(computerTurn)
  if (playerTurn === 'Rock' && computerTurn === 'Scissors') {
    return 'Player wins!';
  } else if (playerTurn === 'Rock' && computerTurn === 'Rock') {
    return 'It is a draw!';
  } else if (playerTurn === 'Rock' && computerTurn === 'Paper') {
    return 'Computer wins!';
  } else if (playerTurn === 'Scissors' && computerTurn === 'Rock') {
    return 'Computer wins!';
  } else if (playerTurn === 'Scissors' && computerTurn === 'Scissors') {
    return 'It is a draw!';
  } else if (playerTurn === 'Scissors' && computerTurn === 'Paper') {
    return 'Player wins!';
  } else if (playerTurn === 'Paper' && computerTurn === 'Scissors') {
    return 'Computer wins!';
  } else if (playerTurn === 'Paper' && computerTurn === 'Paper') {
    return 'It is a draw!';
  } else if (playerTurn === 'Paper' && computerTurn === 'Rock') {
    return 'Player wins!';
  }
};
