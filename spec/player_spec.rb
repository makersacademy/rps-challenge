require 'player'

describe Player do
  let!(:player) { Player.new("Wednesday") }

  it "has a name" do
    expect(player.name).to eq "Wednesday"
  end

  it "can track his/her number of victories" do
    expect(player.victories).to eq 0
  end

  context "options for the player" do
    it "can choose rock" do
      move = "ROCK"
      player.choose_move(move)
      expect(player.p_move).to eq move
    end

    it "can choose paper" do
      move = "PAPER"
      player.choose_move(move)
      expect(player.p_move).to eq move
    end

    it "can choose scissors" do
      move = "SCISSORS"
      player.choose_move(move)
      expect(player.p_move).to eq move
    end
  end
end
