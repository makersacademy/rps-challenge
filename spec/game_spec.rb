require 'game'

describe Game do

  let(:jamie) { double :player, move: 'Rock' }
  let(:computer) {double :player, move: 'Paper' }
  let(:new) { described_class.new(jamie, computer) }

  describe 'initialize' do

    it 'player should have a name' do
      expect(new.player).to eq(jamie)
    end

    it 'computer should have a move' do
      expect(new.computer).to eq(computer)
    end

  end

  describe 'winner' do

    it 'should ensure computer wins' do
      expect(new.winner).to eq("Computer")
    end
  end

end
