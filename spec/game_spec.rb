require "game"

describe Game do

  let ( :luke ) { double :player, choice: "Scissors" }
  let ( :hal ) { double :AI, choice: "Paper" }
  let ( :hal2 ) { double :AI, choice: "Rock" }

  it "correctly announces the player as the winner" do
    expect(Game.new(luke.choice, hal.choice).winner).to eq("You win at this skillful game of chance")
  end

  it "correctly announces the player as the loser" do
    expect(Game.new(luke.choice, hal2.choice).winner).to eq("HAL wins. Another time, McCloud")
  end

  it "announces a draw" do
    expect(Game.new("Rock", "Rock").winner).to eq("This one's a draw")
  end

end
