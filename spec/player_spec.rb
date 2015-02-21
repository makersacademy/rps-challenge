require 'player'

describe Player do

  let(:james) { Player.new("James") }
  let(:game_weapons) { double :GameWeapons }

  it "can enter in their name" do
    expect(james.name).to eq "James"
  end

  it "can choose to play a rock" do
    allow(game_weapons).to receive(:select_weapon).and_return("rock")
    james.select_player_weapon(:rock, game_weapons)
    expect(james.weapon).to eq "rock"
  end

  it "will raise an error is weapon choice is not avaliable" do
    allow(game_weapons).to receive(:select_weapon).and_raise("Can't select that weapon")
    expect{james.select_player_weapon(:bomb, game_weapons)}.to raise_error(RuntimeError, "Can't select that weapon")
  end


end