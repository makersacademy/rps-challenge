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
    var spy = spyOn(player, 'makeTurn').and.returnValue('Rock');
    player.makeTurn();
    var spy = spyOn(computer, 'makeTurn').and.returnValue('Scissors');
    computer.makeTurn();
    expect(game.outcome()).toEqual('Player wins!');
  });

  // it("should declare a draw", function() {
  //   game.gameStart();
  //   player.makeTurn();
  //   var spy = spyOn(computer, 'makeTurn').and.returnValue('Rock');
  //   computer.makeTurn();
  //   expect(game.outcome()).toEqual('It is a draw!');
  // });
  //
  // it("should declare the computer the winner", function() {
  //   game.gameStart();
  //   player.makeTurn();
  //   var spy = spyOn(computer, 'makeTurn').and.returnValue('Scissors');
  //   computer.makeTurn();
  //   expect(game.outcome()).toEqual('Computer wins!');
  // });

});
