require 'sheldon'

describe Sheldon do
  subject(:sheldon) {described_class.new}

  describe '#initialize' do
    it 'initiliazes with name' do
      expect(sheldon.name).to eq "Sheldon"
    end
    it 'initializes without a move' do
      expect(sheldon.move).to eq nil
    end

    describe '#make_move' do
      it 'receives instruction to sample actions' do
        expect(Sheldon::ACTIONS). to receive(:sample)
        sheldon.make_move
      end
    end

  end

end
