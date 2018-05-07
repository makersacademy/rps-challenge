require 'player'

describe Player do
  let(:roxu) { described_class.new("Roxu") }

  describe "#initialize" do
    it 'initializes a player with a given name' do
      expect(roxu.name).to eq("Roxu")
    end
  end

  describe '#weapon=' do
    it 'raises an error if a wrong weapon is chosen' do
      expect{roxu.weapon=("blablabla")}.to raise_error('This is not a possible weapon')
    end

    it 'returns a weapon' do
      roxu.weapon=("rock")
      expect(roxu.weapon).to eq(:rock)
    end
  end
end
