require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player) }

  context '#initialize' do
    it 'takes player as argument' do
      expect(game.player).to eq player
    end
  end

  context '#play' do
    it 'returns player as the winner' do
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      expect(game.play('Scissors')).to eq 'player'
    end

    it 'returns computer as winner' do
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      expect(game.play('Rock')).to eq 'computer'
    end

    it 'returns draw when same option' do
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      expect(game.play('Paper')).to eq 'draw'
    end
  end
end
