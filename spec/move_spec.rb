require 'move'

describe Move do
  subject(:move) { described_class.new(choices) }
  let(:choices) { {"name" => "Muna", "choice" => :rock, "computer_choice" => :scissors} }

  describe '#name' do
    it 'returns name' do
      expect(move.name).to eq "Muna"
    end
  end

  describe '#choice' do
    it 'returns choice' do
      expect(move.choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'returns computer_choice' do
      expect(move.computer_choice).to eq :scissors
    end
  end

  context 'end game' do
    subject(:winning_move) { move }
    subject(:losing_move) { described_class.new(losing_moves) }
    subject(:drawing_move) { described_class.new(drawing_moves) }

    let(:losing_moves) { {"name" => "Muna", "choice" => :rock, "computer_choice" => :paper} }
    let(:drawing_moves) { {"name" => "Muna", "choice" => :rock, "computer_choice" => :rock} }

    describe '#win?' do
      it 'returns true when choice = :rock and computer_choice = :scissors' do
        expect(winning_move.win?).to be true
      end
    end

    describe '#lose?' do
      it 'returns true when choice = :paper and computer_choice = :scissors' do
        expect(losing_move.lose?).to be true
      end
    end

    describe '#draw?' do
      it 'returns true when choice = :scissors and computer_choice = :scissors' do
        expect(drawing_move.draw?).to be true
      end
    end
  end
end
