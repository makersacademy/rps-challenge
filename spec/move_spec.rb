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
      move = described_class.new(challenger, computer)
      expect(move.beats?).to eq(true)
    end

    it 'returns false if computer move beats challenger' do
      computer = :rock
      move = described_class.new(challenger, computer)
      expect(move.beats?).to eq(false)
    end
  end

end 
