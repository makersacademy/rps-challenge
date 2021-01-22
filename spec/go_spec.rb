require 'go'

describe Go do
  subject(:go) { described_class.new(sessions) }
  let(:sessions) { { name: "Sean", move: :rock, computer_move: :rock } }

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
end
