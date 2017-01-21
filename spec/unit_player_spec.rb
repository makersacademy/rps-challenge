require 'player.rb'

describe Player do

  let(:name) { "Beast" }
  subject(:player) { described_class.new(name: name) }

  describe "#name" do
    it 'returns correct name' do
      expect(player.name).to eq name
    end
  end
  describe "#human" do
    it 'defaults to true' do
      expect(player.human).to be true
    end
    context "set false at init" do
      subject(:player) { described_class.new(name: name, human: false) }
      it 'returns false' do
        expect(player.human).to be false
      end
    end

  end
end
