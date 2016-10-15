require 'player'
require 'game'

describe Player do
  subject(:player1) { described_class.new }
  subject(:player2) { described_class.new }
  let(:game) { Game.new(player1, player2)}

  it "records the player's name" do
    player1.set_name("David Miller")
    expect(player1.name).to eq "David Miller"
  end

  it "has 0 score by default" do
    expect(player1.score).to eq 0
  end

  it "allows the player to select weapon" do
    player1.select_weapon("Paper")
    expect(player1.weapon).to eq "Paper"
  end

  it "allows the computer to select weapon randomly" do
    random_weapon = player2.random_weapon_selection
    player2.weapon
    expect(player2.weapon).to eq random_weapon
  end

 it "wins a point if player is a round_winner", :focus do
   allow(player1).to receive(:weapon).and_return "Rock"
   allow(player2).to receive(:weapon).and_return "Paper"
   game.update_score
   expect(player2.score).to eq 1

 end

end
