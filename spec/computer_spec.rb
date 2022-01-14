require 'computer'

describe Computer do
  describe "#move" do
    let(:computer) { described_class.new }
    it 'receives #move' do
      allow(computer).to receive(:move).and_return('paper')
      expect(computer.move).to eq('paper')
    end
    it 'returns a move' do  
      expect(computer.move).not_to be_nil
    end
  end
end
