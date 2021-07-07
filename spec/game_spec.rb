require "game"

describe Game do
  it "raises error if invalid selection" do
    expect { Game.new("nonsense") }.to raise_error Game::INVALID_WEAPON_ERROR
  end

  context "user picks rock" do
    it 'picks a weapon' do
      game = Game.new("rock")
      expect(game.weapon).to eq "rock"
    end
  end

  context "user picks paper" do
    it 'picks a weapon' do
      game = Game.new("paper")
      expect(game.weapon).to eq "paper"
    end
  end

  context "user picks scissors" do
    it 'picks a weapon' do
      game = Game.new("scissors")
      expect(game.weapon).to eq "scissors"
    end
  end

end
