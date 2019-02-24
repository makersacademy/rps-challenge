require "game"

describe Game do

  let ( :luke ) { double :player, choice: "Scissors" }
  let ( :dave ) { double :player, choice: "Scissors" }
  let ( :hal ) { double :AI, play: "Paper" }
  let ( :hal2 ) { double :AI, play: "Rock" }

  it "correctly announces the player as the winner" do
    expect(Game.new(luke.choice, hal.play).winner).to eq("You win at this skillful game of chance")
  end

  it "correctly announces the player as the loser" do
    expect(Game.new(dave.choice, hal2.play).winner).to eq("HAL wins. Another time, McCloud")
  end

end
