describe Game do

let (:player_1) {double :player_1, choice: "paper"}
let (:player_2) {double :player_2, choice: "stone"}
let (:player_3) {double :player_3, choice: "stone"}
subject (:game){ described_class.new player_1, player_2}

  it "knows who won" do
    expect(game.compare(player_1.choice, player_2.choice)).to eq player_2
  end

  it "correctly identifies a draw" do
    expect(game.compare(player_3.choice, player_2.choice)).to eq "Draw"
  end

end
