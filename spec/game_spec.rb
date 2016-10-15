require 'game'

describe Game do

  subject(:game) { described_class.new(dave) }
  let(:dave) { double :player }

  describe 'initialize' do
    it 'accepts a player instance' do
      expect(game.player).to eq dave
    end
  end

  describe 'computer_move' do
    it 'selects a move from an array' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.computer_move).to eq :rock
    end
  end
end
