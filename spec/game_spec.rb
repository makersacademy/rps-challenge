require 'game'

describe Game do

  subject(:game) { described_class.new(player, bot) }
  let(:player) { double('Josu') }
  let(:bot) { double('bot') }

  describe '#initialize' do
    it 'initializes the game with two players' do
      expect(Game).to receive(:new).with(player, bot)
      subject
    end
  end
end
