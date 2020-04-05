require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:rps) { Game.new(first: player1, second: player2) }

  it " should be able to hold the two game players Part 1" do
    expect(rps.player_one.name).to eq(player1)
  end
  
  it " should be able to hold the two game players Part 2" do
    expect(rps.player_two.name).to eq(player2)
  end

  it " should be able to determine which of the two players in the game is the winner - Part 1" do
    rps.player_one.stub(:weapon) { 'rock' }
    rps.player_two.stub(:weapon) { 'scissors' }
    rps.player_one.stub(:name) { 'Ed' }
    rps.player_two.stub(:name) { 'notEd' }
    expect(rps.janken).to eq('Ed')
  end

  it " should be able to determine which of the two players in the game is the winner - Part 2" do
    rps.player_one.stub(:weapon) { 'scissors' }
    rps.player_two.stub(:weapon) { 'rock' }
    rps.player_one.stub(:name) { 'Ed' }
    rps.player_two.stub(:name) { 'notEd' }
    expect(rps.janken).to eq('notEd')
  end

  it " should be able to determine which of the two players in the game is the winner - Part 3" do
    rps.player_one.stub(:weapon) { 'scissors' }
    rps.player_two.stub(:weapon) { 'scissors' }
    rps.player_one.stub(:name) { 'Ed' }
    rps.player_two.stub(:name) { 'notEd' }
    expect(rps.janken).to eq("No one, it's a draw")
  end
  
  it " should be able to create an instance of itself using a class method" do
    expect { Game.start_game(one: player1, two: player2) }.to_not raise_error
  end
  it " should be able to access an instance of the game using class methods" do
    Game.start_game(one: player1, two: player2)
    expect(Game.current_game).to be_instance_of(Game)
  end
end
