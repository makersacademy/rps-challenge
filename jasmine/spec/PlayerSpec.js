describe("Player", function() {

  beforeEach(function() {
    player = new Player();
  });

  it("should make a turn", function() {
    var spy = spyOn(player, 'makeTurn').and.returnValue('Rock');
    expect(player.makeTurn()).toEqual('Rock');
  });

});
