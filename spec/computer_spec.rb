require 'computer'

describe Computer do
  subject(:cpu) { described_class.new }

  describe '/result' do
    let(:weapon) { double(:weapon) }
    it "shows the computer player's weapon" do
      allow(cpu).to receive(:weapon).and_return(weapon)
      expect(cpu.weapon).to eq(weapon)
    end
  end

  describe '#weapon' do
    it 'returns rock' do
      allow(cpu).to receive(:weapon).and_return("Rock")
      expect(cpu.weapon).to eq("Rock")
    end

    it 'returns paper' do
      allow(cpu).to receive(:weapon).and_return("Paper")
      expect(cpu.weapon).to eq("Paper")
    end

    it 'returns scissors' do
      allow(cpu).to receive(:weapon).and_return("Scissors")
      expect(cpu.weapon).to eq("Scissors")
    end
  end
end
