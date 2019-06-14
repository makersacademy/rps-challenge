function Player() {
  this.turn = "";
}

Player.prototype.makeTurn = function(playerTurn) {
  return this.turn = playerTurn
};
