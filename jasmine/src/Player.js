function Player() {
  this.turn = ['Scissors','Paper','Rock'];
}

Player.prototype.makeTurn = function() {
  return this.turn;
};
