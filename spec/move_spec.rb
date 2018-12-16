require 'move'

describe Move do
  subject(:move) { described_class.new(challenger, computer) }
  let (:challenger) { :scissors }
  let (:computer) { :paper }

  describe '#challenger_choice' do
    it 'returns challenger choice as a symbol' do
      expect(move).to respond_to(:challenger_choice)
    end
  end

  describe '#computer_choice' do
    it 'returns computer choice as a symbol' do
      expect(move).to respond_to(:computer_choice)
    end
  end

  describe '#beats?' do
    it 'returns true if challenger move beats the computer' do
      expect(move.beats?).to eq(true)
    end

    it 'returns false if computer move beats challenger' do
      computer = :rock
      move = described_class.new(challenger, computer)
      expect(move.beats?).to eq(false)
    end
  end

  describe '#draw?' do
    it 'return true if challenger and computer moves the same' do
      computer = :scissors
      move = described_class.new(challenger, computer)
      expect(move.draw?).to eq(true)
    end
  end

  describe '#result' do
    it 'returns draw if challenger and computer moves the same' do
      computer = :scissors
      move = described_class.new(challenger, computer)
      expect(move.result).to eq(:draw)
    end

    it 'returns win as boolean if challenger beats computer' do
      expect(move.result).to eq(true)
    end

    it 'returns loss as bollean if challenger loses to computer' do
      computer = :rock
      move = described_class.new(challenger, computer)
      expect(move.result).to eq(false)
    end
  end

end
