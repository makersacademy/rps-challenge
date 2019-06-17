describe("Game", function() {

  beforeEach(function() {
    game = new Game();
    player = new Player();
    computer = new Computer();
  });

  it("should display the text to start a new game", function() {
    expect(game.gameStart()).toEqual('Rock, Paper or Scissors?');
  });

  it("should declare player the winner", function() {
    game.gameStart();
    player.makeTurn('Rock');
    var spy = spyOn(computer, 'makeTurn').and.returnValue('Scissors');
    computer.makeTurn();
    expect(game.outcome()).toEqual('Player wins!');
  });

});
