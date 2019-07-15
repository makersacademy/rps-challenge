require 'game'

describe Game do

  subject(:game) { described_class.new }

  describe 'play' do
    it 'shows you have won if player picks rock and the CPU picks scissors' do
    allow(game.computer).to receive(:sample) { "scissors" }
    expect(game.play("rock")).to eq "You win with scissors!"
    end

    it 'shows you have lost if player picks scissors and CPU picks rock' do
      allow(game.computer).to receive(:sample) { "rock" }
      expect(game.play("scissors")).to eq "CPU wins with rock!"
    end

    it 'shows you have drawn if the player and computer pick the same item' do
    allow(game.computer).to receive(:sample) { "scissors" }
    expect(game.play("scissors")).to eq "It's a draw!"
    end
  end
end
