describe("Player", function() {

  beforeEach(function() {
    player = new Player();
  });

  it("should make a turn", function() {
    expect(player.makeTurn('Rock')).toEqual('Rock');
  });

});
