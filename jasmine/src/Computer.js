function Computer() {
  this.turn = ['Scissors','Paper','Rock'];
}

Computer.prototype.makeTurn = function() {
  return this.turn;
};
