require 'go'

describe Go do
  subject(:go) { described_class.new(sessions) }
  let(:sessions) { { name: "Sean", move: :rock, computer_move: :scissors } }

  describe "#name" do
    it 'returns the players name' do
      expect(go.name).to eq 'Sean'
    end
  end

  describe '#move' do
    it 'returns the players move' do
      expect(go.move).to eq :rock
    end
  end

  describe '#computer_move' do
    it 'returns the computers move' do
      allow(go).to receive(:computer_move).and_return :paper
      expect(go.computer_move).to eq :paper
    end
  end

  context 'Full game' do

    describe '#win?' do
      it 'returns true if the user beats the computer' do
        expect(go.win?).to eq true
      end
    end


  end
end
