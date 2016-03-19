require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer)}
  let(:computer) { Computer.new }
  let(:player) { Player.new "Bob" }
  let(:rock) { "rock" }
  let(:paper) { "paper" }
  let(:scissors) { "scissors" }

  describe '#outcome'
    before do
      allow(computer).to receive(:choice).and_return('paper')
    end

    it 'is a draw' do
      player.choice(paper)
      expect(game.outcome).to eq "It's a draw!"
    end

    it 'declares player as winner' do
      player.choice(scissors)
      expect(game.outcome).to eq "You win!"
    end

    it 'declares computer as winner' do
      player.choice(rock)
      expect(game.outcome).to eq "The computer wins!"
    end
end
