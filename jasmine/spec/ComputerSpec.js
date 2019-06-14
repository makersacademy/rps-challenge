describe("Computer", function() {

  beforeEach(function() {
    computer = new Computer();
  });

  it("should make a turn", function() {
    var spy = spyOn(computer, 'makeTurn').and.returnValue('Scissors');
    expect(computer.makeTurn()).toEqual('Scissors');
  });

});
