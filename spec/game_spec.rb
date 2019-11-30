require 'game'

RSpec.describe Game do
  subject(:game_class) { Game }
  let(:sam) { double :player, name: 'Sam', hand: nil, play_hand: true }
  let(:test_opponent) { double :computer, hand: ['Rock', 'Paper', 'Scissors'].sample, play_hand: true }
  let(:test_game) { Game.new }

  before(:each) do
    subject.new_game(sam, test_opponent)
  end

  describe '#play_round' do
    it 'triggers a round of rock-paper-scissors' do
      expect(sam).to receive(:play_hand).with 'Rock'
      expect(test_opponent).to receive(:play_hand)
      
      subject.instance.play_round('Rock')
    end
  end

  describe '#verdict' do
    it 'confirms the player has won (player draws paper, computer draws rock)' do
      allow(sam).to receive(:hand).and_return 'Paper'
      allow(test_opponent).to receive(:hand).and_return 'Rock'

      expect(subject.instance.verdict).to eq 'YOU WIN'
    end

    it 'confirms the player has lost (player draws scissors, computer draws rock)' do
      allow(sam).to receive(:hand).and_return 'Scissors'
      allow(test_opponent).to receive(:hand).and_return 'Rock'

      expect(subject.instance.verdict).to eq 'YOU LOSE'
    end

    it 'confirms the game is a draw (player draws rock, computer draws rock)' do
      allow(sam).to receive(:hand).and_return 'Rock'
      allow(test_opponent).to receive(:hand).and_return 'Rock'

      expect(subject.instance.verdict).to eq 'DRAW'
    end
  end
end
